# Android AI Image Generation App (Snapdragon 8s Gen 4 NPU)

This project automates building an offline AI image generation app for Android using the HunyuanImage-3.0 model, optimized for the Snapdragon 8s Gen 4 NPU.

## Features
- Model conversion and optimization scripts (Python/bash)
- Android app in C++ (JNI, NPU integration)
- Build scripts (CMake/Gradle)
- Deployment instructions

## Steps
1. Download and convert the HunyuanImage-3.0 model to ONNX
2. Quantize and optimize with Qualcomm AIMET
3. Convert to QAIRt format using Qualcomm AI Stack CLI
4. Build Android app to run model on NPU
5. Deploy and run on device

## Requirements
- Qualcomm AI Stack, AIMET, SDK
- Android NDK, CMake, Gradle
- Snapdragon 8s Gen 4 device

## Usage
Follow the scripts and instructions in the project to automate the pipeline and deploy the app.
