#!/bin/bash
export PATH="/opt/slurm/bin:$PATH"
# first job called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
sbatch /data/src/PyHipp_Copy/rplparallel-slurm.sh

# second set of jobs called from the day directory
sbatch /data/src/PyHipp_Copy/rs1-slurm.sh
sbatch /data/src/PyHipp_Copy/rs2-slurm.sh
sbatch /data/src/PyHipp_Copy/rs3-slurm.sh
sbatch /data/src/PyHipp_Copy/rs4-slurm.sh

