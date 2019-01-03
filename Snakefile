# Load config
configfile: "config/default.yaml"

# Target rule
rule all:
    input:
        expand("results/index/{genome}", genome = config['genome'])
    output:
        touch("results/end/end.log")

# Includes
include: "rules/indexing.smk"
