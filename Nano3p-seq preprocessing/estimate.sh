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

f=/path/to/output/minimap3/tenthacR10resumed2.bam

python3 /path/to/polyTailor/src/get_pT.py \
  -o "$f.pT.tsv.gz" \
  -b "$f" \
  -e /path/to/output/minimap3/transcript_ends.flt.tsv.gz.bed \
  -i /path/to/output/isoquant/OUT/OUT.read_assignments.tsv.gz

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
