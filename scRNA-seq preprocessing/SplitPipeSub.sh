#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -pe smp [number of cores]
#$ -l mem_free=[ram in gb]
#$ -l scratch=[scratch in gb]
#$ -l h_rt=[runtime]
#$ -m bea
#$ -M your.email@example.com

source /path/to/miniconda3/bin/activate /path/to/miniconda3/envs/spipe2

split-pipe \
  --mode all \
  --chemistry v2 \
  --genome_dir /path/to/genomes/GRCZ11Law/ \
  --fq1 /path/to/expdata/CPC_sub_1/CPC_sub_1_S1_R1_001.fastq.gz \
  --fq2 /path/to/expdata/CPC_sub_1/CPC_sub_1_S1_R2_001.fastq.gz \
  --output_dir /path/to/project/analysis/sub1 \
  --samp_sltab /path/to/project/SampleLoadingTable.xlsm

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
