# @author: Jean Fan
# @date: May 6, 2022
# @desc: Snakemake pipeline testing on Rockfish
#
# Usage: snakemake --snakefile test.snakefile --cores 1

SAMPLES = ['sample1', 'sample2']

rule all:
    input:
        expand('out/{sample}_out.txt', sample=SAMPLES)

rule testytester:
    input: name = 'data/{sample}.txt'
    output: 'out/{sample}_out.txt'
    shell: 'echo `cat {input.name}` > {output}'
	