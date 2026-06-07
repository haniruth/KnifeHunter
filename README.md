# KnifeHunter Fine-Grained Classification

This repository contains a fine-grained image classification pipeline for the KnifeHunter coursework dataset. The final verified model uses transfer learning with TIMM EfficientNet-B3 and an augmentation-heavy PyTorch training setup.

## Project Summary

- Built a PyTorch/TIMM classifier for 543 fine-grained knife/tool categories.
- Trained an ImageNet-pretrained `tf_efficientnet_b3` model with AdamW, label smoothing, cosine learning-rate scheduling, random resized crops, random erasing, color jitter, rotation, and horizontal flips.
- Evaluated validation performance with top-k mean average precision.

## Verified Result

| Model | Validation Metric | Result |
| --- | --- | ---: |
| `tf_efficientnet_b3` | mAP@5 | 0.6048 |

The verified Surrey run saved the best checkpoint at epoch 27 as `Knife-Effb3-aug/Knife-tf_efficientnet_b3-best.pth`. Checkpoints and dataset images are not included in this public repository.

## Repository Layout

- `Training.py`: training loop and validation checkpointing.
- `Testing.py`: test/evaluation entry point.
- `data.py`: dataset loading from CSV annotations.
- `args.py`: command-line configuration.
- `utils.py`: metrics and reproducibility helpers.
- `src/`: optimizer, scheduler, and transform helpers.
- `train.sh`: EfficientNet-B3 training command.
- `test.sh`: evaluation command for the best checkpoint.
- `results/verified_results.md`: compact result record.

## Data And Weights

The KnifeHunter dataset and `.pth` checkpoints are not included. Place the dataset locally and pass its path with `DATA_ROOT`.

```bash
DATA_ROOT=/path/to/EEEM066_KnifeHunter bash train.sh
DATA_ROOT=/path/to/EEEM066_KnifeHunter bash test.sh
```

