#!/bin/sh
# consol_fsjobs.sh
# Usage: sbatch --dependency=afterany:<ids> consol_fsjobs.sh <colon-separated-ids>

if [ -z "$1" ]; then
    echo "Error: no job ID list provided."
    echo "Usage: sbatch consol_fsjobs.sh <colon-separated-job-ids>"
    exit 1
fi

deps="$1"
cmd1="sbatch --dependency=afterany:${deps} /data/src/PyHipp_Copy/fsall-slurm.sh"

echo "$cmd1"
eval "$cmd1"
