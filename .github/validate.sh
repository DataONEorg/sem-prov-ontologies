#!/bin/sh

set -e

RIOT="./apache-jena-4.1.0/bin/riot"
PATHS=$(cat .github/ontologies.txt | awk -F, '{print $3}')

for path in "$PATHS"
do
  "$RIOT" --validate $path
done
