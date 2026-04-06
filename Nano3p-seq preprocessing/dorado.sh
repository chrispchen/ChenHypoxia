#!/bin/bash
#$ -q gpu.q
#$ -S /bin/bash
#$ -cwd
#$ -l mem_free=[ram in gb]
#$ -l scratch=[scratch in gb]
#$ -l h_rt=[runtime]
#$ -l gpu_mem=[gpu memory in gb]
#$ -m bea
#$ -M your.email@example.com

module load Sali
module load gcc/6.4.1

dorado basecaller \
  ~/src/dorado/models/dna_r10.4.1_e8.2_400bps_sup@v5.0.0 \
  /path/to/pod5 -r \
  --kit-name SQK-NBD114-24 \
  --no-trim \
  --emit-moves \
  -x cuda:0 \
  > /path/to/output/tenthacR10.bam \
  2> /path/to/output/dorado_2.log

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
