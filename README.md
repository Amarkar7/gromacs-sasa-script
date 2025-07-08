# GROMACS SASA Calculator

This repository contains a simple Bash script to calculate **Solvent Accessible Surface Area (SASA)** using GROMACS.

## 🧪 What is SASA?

SASA (Solvent Accessible Surface Area) represents the surface of a biomolecule that is accessible to a solvent (typically water). It is widely used in molecular dynamics analysis to measure protein exposure, stability, folding, and interactions.

## 📜 Script: `sasa.sh`

### 🔧 Usage

```bash
./sasa.sh -f <trajectory.xtc> -s <structure.tpr> [-n index.ndx] -o <output.xvg> -surface <group> -output <group>
# gromacs-sasa-script
Bash script for SASA calculation using GROMACS
