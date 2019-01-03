import os

indexdir = expand("{storedir}/{indexdir}", storedir=config['storedir'], indexdir=config['genomes'][config['genome']]['indexdir'])[0]
outdir = expand("results/index/{genome}", genome=config['genome'])[0]

# If indexdir exists => copy index in local
if (os.path.exists(indexdir)):
    rule download_index:
        input: indexdir
        output: directory(outdir)
        shell: """
scp -r {input} {output} \
&& echo "done"
"""
# If indexdir do not exists => build the index from fasta
else:
    rule create_index:
        input:
            config['fasta'] if config['fasta'] else expand("{storedir}/{fasta}", storedir=config['storedir'], fasta=config['genomes'][config['genome']]['fasta'])
        output: directory(outdir)
        threads: config['threads']
        shell: """
bowtie2-build \
--threads {threads} \
{input}
results/index/{config[genome]}/{config[genome]} \
&& scp results/index/{config[genome]}/{config[genome]}* {indexdir} \
&& echo "done"
"""
