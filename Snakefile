# Load config
configfile: "config/default.yaml"

# Target rule
rule all:
    input:
        "results/merged/all.txt"

# Includes
include: "rules/extract.smk",
include: "rules/merge.smk"
