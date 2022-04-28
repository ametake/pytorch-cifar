#!/bin/bash
#SBATCH --job-name=cifar100-resnet34-m2
#SBATCH --partition=gpu-long
#SBATCH --gres=gpu:4
#SBATCH --mem=20GB
#SBATCH --ntasks-per-node=4
#SBATCH -d singleton
#SBATCH --open-mode truncate
#SBATCH -o outputs/cifar100-resnet34-m2.txt
#SBATCH -t 18:00:00
module load cuda/11.3.1
python -u main.py

# In case it doesn't work
# srun python main.py