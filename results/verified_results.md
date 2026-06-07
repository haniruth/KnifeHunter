# Verified Results

Best completed Surrey run:

| Model | Epoch | Validation Metric | Result |
| --- | ---: | --- | ---: |
| `tf_efficientnet_b3` | 27 | mAP@5 | 0.6048 |

Configuration: ImageNet-pretrained EfficientNet-B3, AdamW, learning rate `2e-4`, weight decay `0.01`, label smoothing `0.05`, 300x300 images, random resized crop, random erasing, light color jitter, rotation, horizontal flips, and cosine annealing.
