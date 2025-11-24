# Deployment Instructions: AI Image Generation App (Snapdragon 8s Gen 4 NPU)

## Prerequisites
- Snapdragon 8s Gen 4 device (with NPU)
- Android NDK and SDK installed
- Qualcomm AI Stack, AIMET, and QAIRt CLI tools installed
- HunyuanImage-3.0 model files (converted to QAIRt format)

## Steps

### 1. Prepare the Model
- Download HunyuanImage-3.0 from Hugging Face:
  ```bash
  ./scripts/model_prepare.sh pytorch https://huggingface.co/tencent/HunyuanImage-3.0 /workspaces/codespaces-blank/model
  ```
- Convert to ONNX (if needed)
- Quantize and optimize with AIMET:
  ```bash
  ./scripts/model_optimize.sh /workspaces/codespaces-blank/model/model.onnx /workspaces/codespaces-blank/model
  ```
- Convert to QAIRt format:
  ```bash
  ./scripts/model_convert_qairt.sh /workspaces/codespaces-blank/model/model_quantized.onnx /workspaces/codespaces-blank/model
  ```

### 2. Build the Android App
- Open `/workspaces/codespaces-blank/app` in Android Studio or use command line:
  ```bash
  cd /workspaces/codespaces-blank/app
  ./gradlew assembleDebug
  ```
- Or build native library with CMake:
  ```bash
  mkdir build && cd build
  cmake .. && make
  ```

### 3. Deploy to Device
- Transfer the APK and QAIRt model to your device:
  ```bash
  adb install app/build/outputs/apk/debug/app-debug.apk
  adb push /workspaces/codespaces-blank/model/model.qairt /sdcard/aiimagegen/model.qairt
  ```

### 4. Run and Test
- Launch the app on your device.
- Enter a prompt and generate an image offline using the NPU.

## Notes
- You can swap in any compatible model by updating the model path and repeating the conversion steps.
- For advanced features, extend the JNI and UI code as needed.
