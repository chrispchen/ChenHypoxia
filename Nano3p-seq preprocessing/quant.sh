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

isoquant.py \
  --complete_genedb \
  --data_type nanopore \
  --stranded reverse \
  -r /path/to/genomes/danRer11.primary.fa \
  -g /path/to/genomes/V4.3.2.gtf \
  --bam /path/to/output/minimap3/*.bam \
  -o /path/to/output/isoquant

zgrep -v '^#' /path/to/output/isoquant/OUT/OUT.read_assignments.tsv.gz \
  | cut -f1,4,6,9 \
  | gzip > /path/to/output/minimap3/read_assignments.tsv.gz

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
