import pandas as pd
import rdflib
import logging

logging.basicConfig(level=logging.INFO)


def get_ontology_campaigns_list():
    logging.info("Getting campaigns list from ontology...")

    graph = rdflib.Graph()
    graph.parse("./MOSAiC/MOSAiC.owl")

    q = """
        PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
        PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
        PREFIX mosaic: <https://purl.dataone.org/odo/MOSAIC_>

        SELECT ?label
        WHERE {
            ?campaign rdf:type mosaic:00000001 .
            ?campaign rdfs:label ?label .
        }
    """

    campaigns = [str(row[0]) for row in graph.query(q)]
    logging.info(f"Got campaigns: {', '.join(campaigns)}")

    return campaigns


def get_latest_campaigns_list():
    logging.info("Getting campaigns list from PANGAEA website...")

    CAMPAIGN_URL = "https://www.pangaea.de/expeditions/byproject/MOSAiC?format=textfile"

    campaigns_table = pd.read_table(CAMPAIGN_URL)
    campaigns = campaigns_table["Campaign label"]

    logging.info(f"Got campaigns: {','.join(campaigns)}")

    return campaigns


def check_campaigns(current, latest):
    logging.info("Checking Campaigns...")

    for label in latest:
        if label not in current:
            raise Exception(
                f"Campaign with label '{label}' not found in the expected set {current}"
            )


def main():
    check_campaigns(get_ontology_campaigns_list(), get_latest_campaigns_list())


if __name__ == "__main__":
    main()
