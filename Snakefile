# Load config
configfile: "config/default.yaml"

# Target rule
rule all:
    input:
        "results/end/end.txt"

# Includes
include: "rules/bowtie2_index.smk"
