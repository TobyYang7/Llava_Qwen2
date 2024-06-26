# Custom LLaVA: Enhanced with Qwen2 Base Model

*Visual instruction tuning towards large language and vision models with GPT-4 level capabilities, enhanced with the Qwen2 base model.*

For more details on usage, refer to the original [LLaVA repository](https://github.com/haotian-liu/LLaVA). This custom repository specifically integrates the Qwen2 base model to leverage its advanced capabilities.

## Dataset for Pretraining and Finetuning

[LLaVA Dataset](https://github.com/haotian-liu/LLaVA?tab=readme-ov-file#visual-instruction-tuning) + [FinVis Dataset](https://huggingface.co/datasets/wza/FinVis)

## Download

```bash
git lfs install
git clone https://www.modelscope.cn/TobyYang7/llava-qwen2-1.5b-instruct-finvis.git
```

## Pretrain Qwen2

```bash
bash pretrain_qwen2.sh
```

The checkpoint for the pretrain projector is located at `checkpoints/Qwen2-1.5B-Instruct-pretrain-FinVis/mm_projector.bin`

## Finetune Qwen2

```bash
bash ft_qwen2.sh
```

## Interface

```bash
bash run_cli.sh
```

## Installation

This repository builds upon the original LLaVA project, integrating the Qwen2 base model for improved performance.

If you are not using Linux, do *NOT* proceed, see instructions for [macOS](https://github.com/haotian-liu/LLaVA/blob/main/docs/macOS.md) and [Windows](https://github.com/haotian-liu/LLaVA/blob/main/docs/Windows.md).

1. Clone this repository and navigate to the custom LLaVA folder

    ```bash
    git clone https://github.com/TobyYang7/Llava_Qwen2.git
    cd Llava_Qwen2
    ```

2. Install Package

    ```shell
    conda create -n custom_llava python=3.10 -y
    conda activate custom_llava
    pip install --upgrade pip  # enable PEP 660 support
    pip install -e .
    ```

3. Install additional packages for training cases

    ```shell
    pip install -e ".[train]"
    pip install flash-attn --no-build-isolation
    ```
