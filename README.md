# smk-ATAC-seq
Experimental workflow for ATAC-seq data analysis using snakemake

# Create the environment
```
conda env create --name smk-tuto --file envs/smk-tuto.smk
```

# Activate the environment
```
conda activate smk-tuto
```

# Dry run
display the execution plan without runing the scripts
```
snakemake -np
```

# Run
```
snakemake
```
