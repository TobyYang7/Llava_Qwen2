#!/bin/bash

python -m llava.serve.cli \
    --model-path checkpoints/Qwen2-1.5B-Instruct-Vision \
    --image-file images/preview/stock_img_6.jpg \
    --conv_mode "qwen_2"
    # --image-file "https://llava-vl.github.io/static/images/view.jpg" \