# Contributing to ontology development

:tada: First off, thanks for contributing!:tada:

- [Types of contributions](#types-of-contributions)
- [Pull Requests](#pull-requests)
- [Development Workflow](#development-workflow)
- [Release process](#release-process)
- [Testing](#testing)
- [Code style](#code-style)
- [Contributor license agreement](#contributor-license-agreement)

## Types of contributions

We welcome all types of contributions, including bug fixes, feature enhancements,
bug reports, documentation, graphics, and many others.  You might consider contributing by:

- Report a bug or request a new feature in our [issue tracker](https://github.com/DataONEorg/sem-prov-ontologies/issues)
- Propose a new ontology term and contribute the code with a Pull Request
- Fix a bug and contribute the code with a Pull Request
- Write or edit some documentation
- Develop a screencast tutorial
- Answer questions on our mailing list or Slack team
- ...

These ontologies are open source, communuity maintained, and we welcome full
participation in the project.  Contributions are reviewed and suggestions are
made to increase the value of the ontologies to the community.  We strive to
incorporate code, documentation, and other useful contributions quickly and
efficiently while maintaining a high-quality and stable set of ontologies.

## Pull Requests

We use the pull-request model for contributions. See [GitHub's help on
pull-requests](https://help.github.com/articles/about-pull-requests/).

In short:

- add an [issue](https://github.com/DataONEorg/sem-prov-ontologies/issues) describing your planned changes, or add a comment to an existing issue;
- on GitHub, fork the [repository](https://github.com/DataONEorg/sem-prov-ontologies)
- on your computer, clone your forked copy of the repository
- checkout  the `develop` branch and either create a new feature branch, or commit your changes (depending on the magnitude of the changes)
- push your branch to your forked repository, and submit a pull-request
- go through the review process, making changes until your pull-request can be merged
- describe your changes in the issue, and close your issue.

## Development Workflow

Development is managed through the git repository at
https://github.com/DataONEorg/sem-prov-ontologies.  The repository is organized
into several branches, each with a specific purpose.

**main**. The `main` branch represents the stable branch that constantly
reflects the current releases for each ontology. Changes should not occur
directly on the main branch, but rather be merged from `develop` using a Pull
Request once a new release has been fully vetted. Thus, the `main` branch is
locked and requires formal review and approval from two project members before
the release pull request can be merged.  Once a PR from `develop` has been
merged, a tag should be immediately created reflecting the version released.
These tags should be of the form `NAME-version`, where NAME is the abbreviated
standard name for the ontology (e.g., ECSO), and version is the current release
version following [semantic versioning](https://semver.org/) conventions. For
example, a tag might be named `ECSO-0.5.1` for an early release of the ECSO
ontology.

**develop**. Development takes place on a single branch for integrated
development and testing of the set of features targeting a particular release.
Commits should only be pushed to this branch once they are ready to be deployed
to production immediately after being pushed. Any unreleased code changes on the
`develop` branch represent changes that have been tested and staged for the next
release of a given ontology. When a set of features are mature and tested and
ready for release, they are merged onto the `main` branch via a Pull Request
that is reviewed by 2 project members before merging.

**feature**. to isolate development on a specific set of capabilities,
especially if it may be disruptive to other developers working on the `develop`
branch, feature branches should be created.  Feature branches are named with a
prefix of `feature` and should include an associated issue number, and a short
descriptive label reflecting their purpose.  For example, `feature-88-mosaic`
might be a branch name for a feature related to a MOSAIC ontology.

All feature branches should be frequently merged with changes from `develop` to
ensure that the feature branch stays up to date with other features that have
This is particularly true if multiple feature branches are being used to advance
different areas of the same ontology file, as frequent merges will reduce
conflicts, and ensure changes are tested and are ready for release.

## Release process

The release process starts with integration testing in a `develop` branch. Once all
changes that are desired in a release are merged into the `develop` branch, we run
the full set of tests on a clean checkout of the `develop` branch.

Second, create a pull request to merge those changes from the `develop` branch
to the `main` branch.  This pull request should be done from the `develop`
branch within the repository in order to make it simple for others to
review the changes, and to maintain a record of the development branch commits.
This pull request will be reviewed by two other project members, and, after issues and
feedback have been resolved, the pull request can be merged into main.  This
cycle can be repeated multiple times if issues need to be resolved during testing.
At this point, if all features for the planned release
have been merged to `develop`, then the `develop` branch can be merged to the
`main` branch, and tagged with the new release tag for that release. At
this point, the tip of the `main` branch will reflect the new release and
the main branch will reflect the content of that release publicly.

## Testing

Ontology files should be valid OWL files that arer logically consistent after
running a reasoner on the files to generate implicit axioms.

## Code style

Code should be written to professional standards to enable clean, well-documented,
readable, and maintainable software.  While there has been significant variablility
in the coding styles applied historically, new contributions should strive for
clean code formatting.  Ontology files follow a particular set of conventions, 
which will be outlined here in the future. For the time being, follow the style present in the owl files.

## Contributor license agreement

In order to clarify the intellectual property license
granted with Contributions from any person or entity, you agree to
a Contributor License Agreement ("CLA") with the Regents of the University of
California (hereafter, the "Regents").

1. Definitions.
   "You" (or "Your") shall mean the copyright owner or legal entity
   authorized by the copyright owner that is making this Agreement
   with the Regents. For legal entities, the entity making a
   Contribution and all other entities that control, are controlled
   by, or are under common control with that entity are considered to
   be a single Contributor. For the purposes of this definition,
   "control" means (i) the power, direct or indirect, to cause the
   direction or management of such entity, whether by contract or
   otherwise, or (ii) ownership of fifty percent (50%) or more of the
   outstanding shares, or (iii) beneficial ownership of such entity.
   "Contribution" shall mean any original work of authorship,
   including any modifications or additions to an existing work, that
   is intentionally submitted by You to the Regents for inclusion
   in, or documentation of, any of the products owned or managed by
   the Regents (the "Work"). For the purposes of this definition,
   "submitted" means any form of electronic, verbal, or written
   communication sent to the Regents or its representatives,
   including but not limited to communication on electronic mailing
   lists, source code control systems, and issue tracking systems that
   are managed by, or on behalf of, the Regents for the purpose of
   discussing and improving the Work, but excluding communication that
   is conspicuously marked or otherwise designated in writing by You
   as "Not a Contribution."
2. Grant of Copyright License. Subject to the terms and conditions of
   this Agreement, You hereby grant to the Regents and to
   recipients of software distributed by the Regents a perpetual,
   worldwide, non-exclusive, no-charge, royalty-free, irrevocable
   copyright license to reproduce, prepare derivative works of,
   publicly display, publicly perform, sublicense, and distribute Your
   Contributions and such derivative works.
3. Grant of Patent License. Subject to the terms and conditions of
   this Agreement, You hereby grant to the Regents and to
   recipients of software distributed by the Regents a perpetual,
   worldwide, non-exclusive, no-charge, royalty-free, irrevocable
   (except as stated in this section) patent license to make, have
   made, use, offer to sell, sell, import, and otherwise transfer the
   Work, where such license applies only to those patent claims
   licensable by You that are necessarily infringed by Your
   Contribution(s) alone or by combination of Your Contribution(s)
   with the Work to which such Contribution(s) was submitted. If any
   entity institutes patent litigation against You or any other entity
   (including a cross-claim or counterclaim in a lawsuit) alleging
   that your Contribution, or the Work to which you have contributed,
   constitutes direct or contributory patent infringement, then any
   patent licenses granted to that entity under this Agreement for
   that Contribution or Work shall terminate as of the date such
   litigation is filed.
4. You represent that you are legally entitled to grant the above
   license. If your employer(s) has rights to intellectual property
   that you create that includes your Contributions, you represent
   that you have received permission to make Contributions on behalf
   of that employer, that your employer has waived such rights for
   your Contributions to the Regents, or that your employer has
   executed a separate Corporate CLA with the Regents.
5. You represent that each of Your Contributions is Your original
   creation (see section 7 for submissions on behalf of others).  You
   represent that Your Contribution submissions include complete
   details of any third-party license or other restriction (including,
   but not limited to, related patents and trademarks) of which you
   are personally aware and which are associated with any part of Your
   Contributions.
