#!/bin/bash

export RUN_DIR=examples/run_classifier.py
export DATA_DIR=../data/claim
export OUTPUT_DIR=./output/arg/train

cpulimit --limit 80 -- \
python $RUN_DIR \
  --task_name ARG \
  --do_train \
  --data_dir $DATA_DIR/ \
  --bert_model bert-base-uncased \
  --max_seq_length 128 \
  --train_batch_size 32 \
  --learning_rate 2e-5 \
  --no_cuda \
  --output_dir $OUTPUT_DIR