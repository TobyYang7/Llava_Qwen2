#!/bin/bash

# CUDA_VISIBLE_DEVICES=0 python MMMU_eval/run_llava.py \
#     --output_path /home/zhangmin/toby/LLaVA/MMMU_eval/example_outputs/llava1.5_7b_val.json \
#     --model_path liuhaotian/llava-v1.5-7b \
#     --config_path MMMU_eval/configs/llava1.5.yaml \
#     --data_path /home/zhangmin/toby/LLaVA/MMMU_eval/data

CUDA_VISIBLE_DEVICES=0 python MMMU_eval/run_qwen2.py \
    --output_path /home/zhangmin/toby/LLaVA/MMMU_eval/example_outputs/llava1.5-qwen2-1.5B-instruct.json \
    --model_path /home/zhangmin/toby/LLaVA/checkpoints/Qwen2-1.5B-Instruct-Vision \
    --config_path MMMU_eval/configs/qwen2.yaml \
    --data_path /home/zhangmin/toby/LLaVA/MMMU_eval/data