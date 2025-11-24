# Model Conversion and Optimization Scripts

These scripts automate downloading, converting, quantizing, and preparing any AI image generation model for Snapdragon NPU deployment.

## Usage
- Set the MODEL_TYPE and MODEL_PATH variables to your desired model (TensorFlow, PyTorch, ONNX, etc.).
- The scripts will handle conversion, quantization, and QAIRt formatting.

## Steps
1. Download model (from Hugging Face or other source)
2. Convert to ONNX (if needed)
3. Quantize/optimize with AIMET
4. Convert to QAIRt format

See individual scripts for details.
