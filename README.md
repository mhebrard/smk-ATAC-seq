# smk-ATAC-seq
Experimental workflow for ATAC-seq data analysis from sequencing results (fastq) to differential analysis report

## Steps
1. Indexing reference genome with bowtie2

## Usage
snakemake -np --cores 20 --config datadir='/mnt/EG' genome='hg38'

## Installation
* install Snakemake ([see tuto](https://github.com/mhebrard/smk-ATAC-seq/wiki/Setup))
* test workflow
```
snakemake -np
```
* create DAG
```
snakemake --dag | dot -Tsvg > dag.svg
```
* run the workflow
```
snakemake
```

## Configuration
* genome <string>: reference genome tag (required)
* storedir <path>: path to storage directory (required)
* fasta <path>: path to reference genome fasta file (default set by <genome>)


## Stack
* VirtualBox: Virtual machine (Windows)
* Vagrant: VM manager (Windows)
* Conda: Environment manager
* GitHub or GitLab: Version control
* GitKraken: Git client
* Atom: Text editor
* Snakemake: Workflow manager

## Tutorial
see [Wiki](https://github.com/mhebrard/smk-ATAC-seq/wiki) for a step by step tutorial
