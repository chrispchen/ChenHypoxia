#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -pe smp 16
#$ -l mem_free=4G
#$ -l scratch=100G
#$ -l h_rt=72:00:00
#$ -m bea
#$ -M your.email@example.com

module load openjdk/11

nextflow run /path/to/nf-core-rnaseq-3.12.0/workflow \
  --input /path/to/project/samplesheet.csv \
  --outdir /path/to/project/out \
  -profile singularity \
  -params-file /path/to/project/nf_params.json \
  -resume

## End-of-job summary, if running as a job
[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
