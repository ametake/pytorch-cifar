#!/bin/bash
#SBATCH --job-name=cifar100-resnet50-m1-epoch50
#SBATCH --partition=gpu-long
#SBATCH --gres=gpu:8
#SBATCH --mem=20GB
#SBATCH --ntasks-per-node=4
#SBATCH -d singleton
#SBATCH --open-mode truncate
#SBATCH -o outputs/cifar100-resnet50-m1-epoch50.txt
#SBATCH -t 180:00:00
module load cuda/11.3.1
python -u main.py

# In case it doesn't work
# srun python main.py
# srun -c 2 -G 2 -p gpu --mem 8192 --pty bash
# bash cifar100-3.sh > outputs/cifar100-resnet50-m1.txt &

# What I finally run:
# sbatch cifar100-1.sh