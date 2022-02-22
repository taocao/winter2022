#!/bin/bash

if [[ $# -lt 2 ]]; then
    echo "Main entry point for evaluation."
    echo "Usage:"
    echo
    echo "    $0 <model_dir (e.g., train_openwebtext_wordlength_seed1111/checkpoint-10000> <eval_data_dir (e.g., wordlength_eval_data)> [additional arguments]"
    exit 1

model_dir=$1; shift
eval_data_dir=$2; shift

python src/evaluate_wordlength_model.py \
    --model_dir ${MODEL_DIR} \
    --eval_data_dir ${EVAL_DATA_DIR} \
    "$@"
