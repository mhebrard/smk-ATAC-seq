rule bwa_map:
    input:
        "data/genome.fa",
        "data/samples/{samples}.fastq"
    output:
        "results/mapped_reads/{samples}.bam"
    shell:
        "bwa mem {input} | samtools view -Sb - > {output}"
