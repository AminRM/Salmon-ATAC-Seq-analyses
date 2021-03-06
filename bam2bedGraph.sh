#!/bin/bash
#SBATCH --output  dump.out
#SBATCH --error dump.err
#SBATCH --mem=10gb
#SBATCH --time=40:00
#SBATCH --mail-user=amin.esmail@csiro.au
module load bedtools
bedtools genomecov -bg -split -ibam ${FILE} -g genome.txt > ${FILE}.split.bg
bedtools genomecov -bg  -ibam ${FILE}  -g genome.txt > ${FILE}.bg
