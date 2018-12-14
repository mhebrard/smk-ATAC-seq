rule samtools_sort:
    input:
        "results/mapped_reads/{sample}.bam"
    output:
        "results/sorted_reads/{sample}.bam"
    shell:
        "samtools sort -T results/sorted_reads/{wildcards.sample} "
        "-O bam {input} > {output}"
