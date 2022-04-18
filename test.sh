#!/bin/bash
#SBATCH -c 2  # Number of Cores per Task
#SBATCH --mem=8192  # Requested Memory
#SBATCH -p gpu  # Partition
#SBATCH -G 1  # Number of GPUs
#SBATCH --job-name=test-rbsn
#SBATCH --output=log.txt
#SBATCH -t 01:00:00  # Job time limit

time=$(date "+%Y%m%d-%H%M%S")
echo "${time}"
srun python main.py

# deleted: | tee log-ResNet18-"${time}".txt