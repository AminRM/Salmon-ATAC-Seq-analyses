#!/bin/bash
#SBATCH --output  dump.out
#SBATCH --error dump.err
#SBATCH --mem=20gb
#SBATCH --time=16:00:00
#SBATCH --mail-user=amin.esmail@csiro.au
module load bowtie
module load samtools
bowtie2 --very-sensitive -x /PATH/name-of-the-index -1 ${FILE}_R1_001.fastq.gz -2 ${FILE}_R2_001.fastq.gz |samtools view -u - |samtools sort - >${FILE}.bam
