#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -l mem_free=[Ram in gb]
#$ -l scratch=[Scratch in gb]
#$ -l h_rt=[runtime]
#$ -m bea
#$ -M your.email@example.com

nextflow run /path/to/nf-core-atacseq-2.0/workflow \
  --input /path/to/project/samplesheet.csv \
  --outdir /path/to/project/output_GRCz11 \
  --fasta /path/to/genomes/danRer11.primary.fa \
  --gtf /path/to/genomes/V4.3.2.gtf \
  -profile singularity \
  --read_length 50 \
  --save_reference \
  --mito_name="MT" \
  -resume

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
