#!/bin/bash
#SBATCH --output  dump.out
#SBATCH --error dump.err
#SBATCH --mem=10gb
#SBATCH --time=6:00:00
#SBATCH --mail-user=amin.esmail@csiro.au
module load python
macs2 callpeak -t ${FILE} -f BAMPE -n ${FILE}_BAMPE
