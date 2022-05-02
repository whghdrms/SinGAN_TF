set module=`$LMOD_SETTARG_CMD -s csh`

module load conda
module load bifrost

conda activate cuda-11.0

qsub -pe gpu-nvidia-k80-broadwell 1 -l "gpu=2[affinity=1]" -P misc main.py train --image /tcchou/scratch2/johe83/SinGAN_ESMDA/Prior/SINGAN_Train.npy --num_iters 1000
