# smk-ATAC-seq
Experimental workflow for ATAC-seq data analysis from sequencing results (fastq) to differential analysis report

## Steps

## Usage
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
