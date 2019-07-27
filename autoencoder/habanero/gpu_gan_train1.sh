#!/bin/sh
#
#SBATCH --account=tzsts          # The account name for the job.
#SBATCH --job-name=gpu_gan_train1      # The job name.
#SBATCH --gres=gpu:1             # Request 1 gpu (Up to 4 on K80s, or up to 2 on P100s are valid).
#SBATCH -c 1                     # The number of cpu cores to use.
#SBATCH --time=6:00:00           # The time the job will take to run.
#SBATCH --mem-per-cpu=100gb        # The memory the job will use per cpu core.
 
module load anaconda
source activate ve
module load cuda80/toolkit cuda80/blas cudnn

python gan_train1.py

# source deactivate
 
# End of script
