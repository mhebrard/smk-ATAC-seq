rule merge:
    input:
        expand("results/extracts/{sample}.txt", sample=config["samples"])
    output:
        "results/merged/all.txt"
    shell:
        "cat {input} >> {output}"
