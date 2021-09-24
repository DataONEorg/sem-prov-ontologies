import os
import shutil
from pathlib import Path
import xml
import pylode
from jinja2 import Template


BASEDIR = os.path.dirname(os.path.realpath(__file__))
ONTOLOGIES_FILE = os.path.join(BASEDIR, "../ontologies.txt")
INDEX_TEMPLATE = os.path.join(BASEDIR, "index.template")


def get_build_dir():
    return Path(BASEDIR, "_build")


def create_build_dir():
    tmpdir = get_build_dir()

    if not os.path.exists(tmpdir):
        os.mkdir(tmpdir)


def get_ontologies():
    with open(ONTOLOGIES_FILE) as onto_file:
        files = [tuple(line.rstrip("\n").split(",")) for line in onto_file.readlines()]
        return [{"name": file[0], "title": file[1], "path": file[2], "basename": os.path.basename(file[2])} for file in files]


def parse_ontology(path):
    return {"name": path.replace(".html", ""), "path": path}


def process_ontology(ontology):
    path = ontology["path"]
    print(f"Processing {path}...")

    # Copy owl file to build dir so it's available
    newpath = Path(get_build_dir(), os.path.basename(path))
    shutil.copy(path, newpath)

    # Try processing once. If it fails, try processing as Turtle
    try:
        return run_pylode(newpath)
    except Exception:
        print("Re-processing as Turtle...")
        renamedpath = os.path.join(
            get_build_dir(), os.path.basename(newpath).replace(".owl", ".ttl")
        )
        os.rename(newpath, renamedpath)

        return run_pylode(renamedpath)


def run_pylode(path):
    out_path = os.path.join(get_build_dir(), f"{path}.html")
    out_path = out_path.replace(".ttl", "")
    out_path = out_path.replace(".owl", "")

    print(f"Running PyLODE on {path} with output path of {out_path}")
    html = pylode.MakeDocco(
        input_data_file=str(path), outputformat="html", profile="dataone"
    ).document()

    with open(out_path, "w") as html_file:
        html_file.write(str(html))

    return out_path


def process_ontologies():
    for ontology in get_ontologies():
        process_ontology(ontology)


def copy_pylode_output():
    new_paths = []

    for path in get_build_dir().glob("*.html"):
        print(f"Copying HTML for {path}")

        basename = os.path.basename(path)
        new_path = Path(BASEDIR, basename)
        os.rename(path, new_path)
        new_paths.append(os.path.basename(new_path))

    return new_paths


def build_index():
    print("Building index...")
    ontologies = get_ontologies()

    output = None

    with open(INDEX_TEMPLATE, "r") as index_template:
        tmpl_str = index_template.read()
        tmpl = Template(tmpl_str)
        output = tmpl.render(ontologies=ontologies)

    with open(os.path.join(get_build_dir(), "index.html"), "w") as index_html:
        index_html.write(str(output))


def main():
    create_build_dir()
    process_ontologies()
    build_index()


if __name__ == "__main__":
    main()
