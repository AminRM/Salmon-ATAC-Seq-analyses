#!/bin/bash
#USAGE="Usage: $0 <sample name> <illumina run dir> <species> <genome> <out dir>"
USAGE="Usage: $0 <sample name>"
if [ "$#" != "1" ]; then
        echo "$USAGE"
        exit 1
fi
#BATCH PARAMETERS
SBATCH_PARAM_2="  --output slurm.%j.out --error slurm.%j.err --ntasks-per-node=8 --mem=10gb --time=4:00:00 --mail-user=amin.esmail@csiro.au"

OUT=$1

CMD1_PARAM="time java -jar /apps/picard/1.119/MarkDuplicates.jar INPUT=$OUT OUTPUT=$OUT.dedup_reads.bam METRICS_FILE=$OUT.metrics.txt VALIDATION_STRINGENCY=LENIENT"
CMD2_PARAM="time java -jar /apps/picard/1.119/BuildBamIndex.jar INPUT=$OUT.dedup_reads.bam VALIDATION_STRINGENCY=LENIENT"

#creating the job to put together the bwa mapping for the different files vy bowtie sampe

cat > ${JOBNAME}_04.qsub <<EOT
#! /bin/bash
#SBATCH --job-name ${JOBNAME}_
#SBATCH $SBATCH_PARAM_2

module load jdk/1.7.0_65
module load picard/1.119
module load gatk/3.2.0

$CMD1_PARAM
$CMD2_PARAM
EOT
#Submittion job to pearcey server
JOB=`sbatch  ${JOBNAME}_04.qsub`
echo $JOB
