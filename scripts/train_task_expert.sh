# !/bin/bash

# Task Selection
TASK="ai2_arc" # Available options: mbpp, math, ai2_arc

# Training Setting
NUM_ITERS=200

# This script needs 2 gpus
CUDA_VISIBLE_DEVICES=0,1 python svd_reinforce_hydra.py \
    base_model@_global_=llama3i8b \
    task@_global_=$TASK \
    mode@_global_=training \
    num_iters=$NUM_ITERS