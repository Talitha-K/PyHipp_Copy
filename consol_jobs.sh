#!/bin/sh
# consol_jobs.sh
# Usage: sbatch --dependency=afterok:<ids> consol_jobs.sh <colon-separated-ids>

if [ -z "$1" ]; then
    echo "Error: no job ID list provided."
    echo "Usage: sbatch consol_jobs.sh <colon-separated-job-ids>"
    exit 1
fi

deps="$1"
cmd1="sbatch --dependency=afterok:${deps} /data/src/PyHipp_Copy/ec2snapshot.sh"

echo "$cmd1"
eval "$cmd1"
