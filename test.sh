#!/usr/bin/env bash
set -euo pipefail

DATA_ROOT="${DATA_ROOT:-../KnifeHunter-data}"

python Testing.py \
--model_mode tf_efficientnet_b3 \
--model-path Knife-Effb3-aug/Knife-tf_efficientnet_b3-best.pth \
--dataset_location "${DATA_ROOT}" \
--test_datacsv dataset/test.csv \
--seed 0 \
--batch_size 16 \
--n_classes 543 \
--resized_img_weight 300 \
--resized_img_height 300 \
--evaluate-only 
