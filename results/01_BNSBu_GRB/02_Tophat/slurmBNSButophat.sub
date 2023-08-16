#!/bin/bash
#SBATCH --job-name=nmmaBNSButophat.job
#SBATCH --output=nmmaBNSButophat%A_%a.out
#SBATCH --error=nmmaBNSButophat%A_%a.err
#SBATCH -p shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --mem=192G
#SBATCH --time=24:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=thomas.hussenot@ijclab.in2p3.fr
#SBATCH -A umn131
#SBATCH --export=ALL
module purge
module load sdsc cpu/0.15.4 gcc/9.2.0 openmpi/4.1.1
module load anaconda3/2020.11
source /cm/shared/apps/spack/cpu/opt/spack/linux-centos8-zen2/gcc-10.2.0/anaconda3-2020.11-weucuj4yrdybcuqro5v3mvuq3po7rhjt/etc/profile.d/conda.sh
conda activate multinest
export LD_LIBRARY_PATH=/home/thussenot/MultiNest/lib/:$LD_LIBRARY_PATH
mpiexec -n 32 light_curve_analysis --model Bu2019lm,TrPi2018 --jet-type -1 --interpolation_type sklearn_gp --svd-path /home/thussenot/nmma/svdmodels --conditional-gaussian-prior-thetaObs --conditional-gaussian-prior-N-sigma 1 --outdir outdirBNSButophat32cores --label GRB211211A --prior ./Bu2019lm_TrPi2018GRB211211A.prior --tmin 0.01 --tmax 10 --dt 0.01 --error-budget 1 --nlive 2048 --Ebv-max 0 --trigger-time 59559.54791666667 --data ../../../GRB211211A.txt --plot --xlim 0,14 --ylim 26,16

