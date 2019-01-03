rule bowtie2_index:
    input:
        config['fasta'] if config['fasta'] else expand("{datadir}/{fasta}", datadir=config['datadir'], fasta=config['genomes'][config['genome']]['fasta'])
    output:
        "results/index/{genome}.1.bt2",
        "results/index/{genome}.2.bt2",
        "results/index/{genome}.3.bt2",
        "results/index/{genome}.4.bt2",
        "results/index/{genome}.rev.1.bt2",
        "results/index/{genome}.rev.2.bt2"
    threads: config['threads']
    shell: """
    bowtie2-build \
    --threads {threads} \
    {input}
    results/index/{wildcards.genome}
    """
