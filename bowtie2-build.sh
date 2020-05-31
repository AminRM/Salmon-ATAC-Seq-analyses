#!/bin/bash
#SBATCH --output  dump.out
#SBATCH --error dump.err
#SBATCH --mem=20gb
#SBATCH --time=16:00:00
#SBATCH --mail-user=amin.esmail@csiro.au
module load bowtie
module load samtools
bowtie2-build genome.fq genome
