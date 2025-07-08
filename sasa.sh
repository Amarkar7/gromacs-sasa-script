#!/bin/bash

# SASA Calculation using GROMACS
# Minimal version of the script

# USAGE EXAMPLES:
# For specific chain (e.g., ChainA):
# ./sasa.sh md-295_1noPBC.xtc em.tpr index.ndx sasa_chainA.xvg "ChainA" "ChainA"
#
# For whole protein using group numbers (e.g., 1):
# ./sasa.sh md-295_1noPBC.xtc md-295_2.tpr "" area.xvg 1 1

TRAJ=$1        # trajectory file (.xtc)
TPR=$2         # structure/topology file (.tpr)
NDX=$3         # index file (.ndx) or leave "" if not needed
OUT=$4         # output file (.xvg)
SURF=$5        # surface group (name or number)
OUTPUT=$6      # output group (name or number)

# Basic check
if [[ -z "$TRAJ" || -z "$TPR" || -z "$OUT" || -z "$SURF" || -z "$OUTPUT" ]]; then
  echo "Usage: ./sasa.sh <traj.xtc> <tpr.tpr> <index.ndx or ''> <output.xvg> <surface> <output>"
  exit 1
fi

# Run GROMACS SASA
if [[ -z "$NDX" ]]; then
  gmx sasa -f "$TRAJ" -s "$TPR" -o "$OUT" -surface "$SURF" -output "$OUTPUT"
else
  gmx sasa -f "$TRAJ" -s "$TPR" -n "$NDX" -o "$OUT" -surface "$SURF" -output "$OUTPUT"
fi



