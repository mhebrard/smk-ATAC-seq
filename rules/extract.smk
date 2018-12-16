rule extract:
    input:
        lambda wildcards: config["samples"][wildcards.sample]
    output:
        "results/extracts/{sample}.txt"
    shell:
        "head -n 3 {input} >> {output}"
