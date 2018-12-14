rule samtools_index:
    input:
        "results/sorted_reads/{sample}.bam"
    output:
        "results/sorted_reads/{sample}.bam.bai"
    shell:
        "samtools index {input}"
