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

for f in /path/to/dorado/*.bam; do
  echo "$(date) $f"
  samtools fastq -T mv,ts,BC "$f" \
    | minimap2 -y -ax splice:hq /path/to/genomes/danRer11.primary.fa - \
    | samtools sort --write-index -o /path/to/output/minimap3/$(basename "$f")
done

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
