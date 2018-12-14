# configfile: "config.yaml"

rule all:
    input:
        "results/mapped_reads/A.bam"

include: "rules/bwa_map.smk"
