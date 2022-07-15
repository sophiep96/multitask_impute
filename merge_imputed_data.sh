#!/bin/bash
#SBATCH -N 20
#SBATCH -c 1
#SBATCH --mem-per-cpu=196G
#SBATCH --time=0-12:00:00 # 12 hours
#SBATCH --output=logfiles/merge_imputed_data.txt
#SBATCH --job-name="merge_imputed_data"
#SBATCH --mail-user=
#SBATCH --mail-type=END,FAIL

# Put commands for executing job below this line
source tdimpute_env2/bin/activate
python TDimpute/merge_imputed_data.py
