#!/usr/bin/env bash
set -euo pipefail

DATA_ROOT="${DATA_ROOT:-../EEEM066_KnifeHunter}"

python Training.py \
--model_mode tf_efficientnet_b3 \
--dataset_location "${DATA_ROOT}" \
--train_datacsv dataset/train.csv \
--val_datacsv dataset/validation.csv \
--saved_checkpoint_path Knife-Effb3-aug \
--epochs 30 \
--batch_size 16 \
--n_classes 543 \
--learning_rate 0.0002 \
--resized_img_weight 300 \
--resized_img_height 300 \
--seed 0 \
--brightness 0.2 \
--contrast 0.2 \
--saturation 0.2 \
--hue 0.2 \
--random_rotation 15 \
--horizontal_flip 0.5 \
--random-resized-crop \
--crop-scale-min 0.75 \
--random-erase \
--label-smoothing 0.05 \
--optim adamw \
--weight-decay 0.01 \
--lr-scheduler CosineAnnealingLR
