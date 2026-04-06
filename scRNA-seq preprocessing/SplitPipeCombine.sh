#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -pe smp [number of cores]
#$ -l mem_free=[ram in gb]
#$ -l scratch=[scrach in gb]
#$ -l h_rt=[runtime]
#$ -m bea
#$ -M your.email@example.com

source /path/to/miniconda3/bin/activate /path/to/miniconda3/envs/spipe2

split-pipe \
  --mode comb \
  --sublibraries \
    /path/to/project/analysis/sub1 \
    /path/to/project/analysis/sub2 \
    /path/to/project/analysis/sub3 \
    /path/to/project/analysis/sub4 \
    /path/to/project/analysis/sub5 \
    /path/to/project/analysis/sub6 \
    /path/to/project/analysis/sub7 \
    /path/to/project/analysis/sub8 \
  --output_dir /path/to/project/analysis/CombinedAll \
  --start_timeout 0

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
