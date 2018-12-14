# configfile: "config.yaml"

rule all:
    input:
        "results/sorted_reads/*.bai"

include: "rules/bwa_map.smk"
include: "rules/samtools_sort.smk"
include: "rules/samtools_index.smk"
