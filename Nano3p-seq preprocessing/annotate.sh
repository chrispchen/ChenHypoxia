#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -pe smp [number of cores]
#$ -l mem_free=[ram in gb]
#$ -l scratch=[scratch in gb]
#$ -l h_rt=[runtime]
#$ -m bea
#$ -M your.email@example.com

module load Sali
module load gcc/6.4.1
source /path/to/miniconda3/bin/activate /path/to/miniconda3/envs/polyTailor

python3 /path/to/polyTailor/src/get_transcript_ends.py \
  --firststrand \
  -q 0 \
  -a /path/to/genomes/V4.3.2.gtf \
  -b /path/to/output/minimap3/*.bam \
  -o /path/to/output/minimap3/transcript_ends.tsv.gz

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
