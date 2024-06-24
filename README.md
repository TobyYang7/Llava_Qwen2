# Custom LLaVA: Enhanced with Qwen2 Base Model

*Visual instruction tuning towards large language and vision models with GPT-4 level capabilities, enhanced with the Qwen2 base model.*

For more details on usage, refer to the original [LLaVA repository](https://github.com/haotian-liu/LLaVA). This custom repository specifically integrates the Qwen2 base model to leverage its advanced capabilities.

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

