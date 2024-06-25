#!/bin/bash
wandb online
# deepspeed llava/train/train_mem.py \
python -m torch.distributed.run --nnodes=1 --nproc_per_node=4 --master_port=20001 llava/train/train_mem.py \
    --model_name_or_path Qwen/Qwen2-1.5B-Instruct \
    --version plain \
    --data_path ./playground/data/LLaVA-Pretrain/pretrain.json \
    --image_folder ./playground/data/LLaVA-Pretrain \
    --vision_tower ./checkpoints/clip-vit-large-patch14-336 \
    --mm_projector_type mlp2x_gelu \
    --tune_mm_mlp_adapter True \
    --mm_vision_select_layer -2 \
    --mm_use_im_start_end False \
    --mm_use_im_patch_token False \
    --bf16 True \
    --output_dir ./checkpoints/Qwen2-1.5B-Instruct-pretrain-FinVis \
    --num_train_epochs 1 \
    --per_device_train_batch_size 2 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 64 \
    --evaluation_strategy "no" \
    --save_strategy "steps" \
    --save_steps 24000 \
    --save_total_limit 1 \
    --learning_rate 1e-3 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --tf32 True \
    --model_max_length 4096 \
    --gradient_checkpointing True \
    --dataloader_num_workers 32 \
    --lazy_preprocess True \
    --report_to wandb \
    # --deepspeed ./scripts/zero3.json 
