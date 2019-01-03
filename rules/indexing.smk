import os

indexdir = expand("{datadir}/{indexdir}", datadir=config['datadir'], indexdir=config['genomes'][config['genome']]['indexdir'])[0]
outdir = expand("results/index/{genome}", genome=config['genome'])[0]

# If indexdir exists => copy index in local
if (os.path.exists(indexdir)):
    rule dl_index:
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
            config['fasta'] if config['fasta'] else expand("{datadir}/{fasta}", datadir=config['datadir'], fasta=config['genomes'][config['genome']]['fasta'])
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
