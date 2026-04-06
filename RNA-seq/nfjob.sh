#!bin.bash

#$ -S /bin/bash # the shell language when run via the job scheduler [IMPORTANT]
#$ -cwd               # job should run in the current working directory
#$ -pe smp 16 # the job will be allotted six slots (“cores”) on a single machine
#$ -l mem_free=4G     # job requires up to 1 GiB of RAM per slot
#$ -l scratch=100G     # job requires up to 2 GiB of local /scratch space
#$ -l h_rt=72:00:00   # job requires up to 24 hours of runtime
#$ -m bea
#$ -M christopher.chen2@ucsf.edu

module load openjdk/11

nextflow run /wynton/group/wagner/chrispchen/nf-core-rnaseq-3.12.0/workflow --input /wynton/group/wagner/chrispchen/251007_CombineRNASeq/samplesheet.csv --outdir /wynton/group/wagner/chrispchen/251007_CombineRNASeq/out -profile singularity -params-file /wynton/group/wagner/chrispchen/251007_CombineRNASeq/nf_params.json -resume

## End-of-job summary, if running as a job
[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"  # This is useful for debugging and usage purposes,
                                          # e.g. "did my job exceed its memory request?"
