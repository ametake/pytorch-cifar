#!/bin/bash
#SBATCH --job-name=cifar100-resnet18-m1
#SBATCH --partition=gpu-long
#SBATCH --gres=gpu:4
#SBATCH --mem=20GB
#SBATCH --ntasks-per-node=4
#SBATCH -d singleton
#SBATCH --open-mode truncate
#SBATCH -o outputs/cifar100-resnet18-m1.txt
#SBATCH -t 58:00:00
module load cuda/11.3.1
python -u main.py

# In case it doesn't work
# srun python main.py
# srun -c 2 -G 2 -p gpu --mem 8192 --pty bash
# bash cifar100-3.sh > outputs/cifar100-resnet50-m1.txt &

# What I finally run:
# sbatch cifar100-1.sh