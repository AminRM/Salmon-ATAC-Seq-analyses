#!/bin/bash
#SBATCH --output  dump.out
#SBATCH --error dump.err
#SBATCH --mem=10gb
#SBATCH --time=6:00:00
#SBATCH --mail-user=amin.esmail@csiro.au
module load samtools
samtools view -b -q 10 ${FILE} >${FILE}.u.bam
