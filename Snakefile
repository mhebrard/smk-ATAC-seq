# Load config
configfile: "config/default.yaml"

# Target rule
rule all:
    input:
        expand("results/index/{genome}.1.bt2", genome=config['genome']),
    output:
        touch("results/end/end.log")

# Includes
include: "rules/bowtie2_index.smk"
