#!/bin/bash
#SBATCH --job-name=run_resnet_sparse_2
#SBATCH --partition=gpu-long
#SBATCH --gres=gpu:2
#SBATCH --mem=20GB
#SBATCH --ntasks-per-node=1
#SBATCH -d singleton
#SBATCH --open-mode truncate
#SBATCH -o sparse_output2.txt
#SBATCH -t 18:00:00
module load cuda/11.3.1
python -u main.py

# In case it doesn't work
# srun python main.py