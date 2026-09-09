#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find . -name "firings.mda" | wc -l

echo ""
echo "#==========================================================="
echo "Start Times"
head -1 rplpl-slurm*.out rs1-slurm*.out rs2-slurm*.out rs3-slurm*.out rs4-slurm*.out

echo "End Times"
tail rplpl-slurm*.out rs1-slurm*.out rs2-slurm*.out rs3-slurm*.out rs4-slurm*.out
echo "#==========================================================="
