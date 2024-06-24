#!/bin/bash
# nvidia-smi --query-gpu=gpu_name --format=csv,noheader | wc -l
wandb offline
python -m torch.distributed.run --nnodes=1 --nproc_per_node=2 --master_port=20001 llava/train/train_mem.py \
    --model_name_or_path Qwen/Qwen2-1.5B-Instruct \
    --version qwen_2 \
    --data_path ./playground/llava_images/llava_v1_5_mix665k.json \
    --image_folder ./playground/llava_images \
    --vision_tower ./checkpoints/clip-vit-large-patch14-336 \
    --pretrain_mm_mlp_adapter ./checkpoints/Qwen2-1.5B-Instruct-pretrain/mm_projector.bin \
    --mm_projector_type mlp2x_gelu \
    --mm_vision_select_layer -2 \
    --mm_use_im_start_end False \
    --mm_use_im_patch_token False \
    --image_aspect_ratio pad \
    --group_by_modality_length True \
    --bf16 True \
    --output_dir ./checkpoints/Qwen2-1.5B-Instruct-Vision \
    --num_train_epochs 1 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 16 \
    --evaluation_strategy "no" \
    --save_strategy "steps" \
    --save_steps 50000 \
    --save_total_limit 1 \
    --learning_rate 2e-5 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --tf32 True \
    --model_max_length 2048 \
    --gradient_checkpointing True \
    --dataloader_num_workers 4 \
    --lazy_preprocess True \
    # --report_to wandb
    # --deepspeed ./scripts/zero2.json \
