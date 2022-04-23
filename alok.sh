#!/bin/bash
#SBATCH -c 2
#SBATCH --mem=8192 # Memory pool for all cores (see also --mem-per-cpu)
#SBATCH -p gpu
#SBATCH -G 2
#SBATCH -t 1-00:00:00
#SBATCH -o 696_1024_512_with_cluster/slurm%j.out


echo `pwd`
# echo "SLURM task ID: "$SLURM_ARRAY_TASK_ID
#module unload cudnn/4.0
#module unload cudnn/5.1
module load cuda/11
set -x -e
##### Experiment settings #####
# !! Contents within this block are managed by 'conda init' !!
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"

conda init bash
conda activate rbsn
sleep 1

python main.py
sleep 1
exit