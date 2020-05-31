#!/bin/bash
#SBATCH --output  dump.out
#SBATCH --error dump.err
#SBATCH --mem=10gb
#SBATCH --time=40:00
#SBATCH --mail-user=amin.esmail@csiro.au
module load samtools
samtools flagstat ${FILE} >${FILE}.stats
