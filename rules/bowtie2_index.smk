rule bowtie2_index:
    input: expand("{datadir}/{fasta}", datadir=config['datadir'], fasta=config['genomes'][config['genome']]['fasta'])
    output:
        directory("results/index"),
        "results/end/end.txt"
    shell: """
    bowtie2-build \
    --threads {config[threads]}
    {input} \
    {output[0]}/{config[genome]}
    touch {output[1]}
    """
