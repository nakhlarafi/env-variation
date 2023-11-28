#!/bin/bash
#SBATCH -J Lang_test
#SBATCH --mem=100M 
#SBATCH -w virya3
#SBATCH -o _%x%J.out
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=nakhla054@gmail.com
source /etc/profile.d/modules.sh # adding module binaries
module load anaconda/3.2023.03

python3 runtotal.py Lang

nvidia-smi