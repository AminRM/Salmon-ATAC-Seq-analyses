#!/bin/bash
#SBATCH --output  dump.out
#SBATCH --error dump.err
#SBATCH --mem=10gb
#SBATCH --time=6:00:00
#SBATCH --mail-user=amin.esmail@csiro.au
module load samtools
samtools merge ${FILE}.dedup.bam ${FILE}_L001.bam.dedup_reads.bam ${FILE}_L002.bam.dedup_reads.bam ${FILE}_L003.bam.dedup_reads.bam ${FILE}_L004.bam.dedup_reads.bam
