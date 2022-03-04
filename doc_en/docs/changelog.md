# Changelog
## v1.3 (2022-03-04)
- Updated OnnxRuntime module
    - Add a Blueprint callable function `Construct Onnx Tensor Info`. Use this function to [dynamically specify the shape of input/output tensors](../tips-dynamic-shape).

## v1.2 (Feb 18, 2022)
- Updated TextureProcessing module
    - Added a component to **convert UTexture to float array**. (`TextureProcessFloatComponent`)
    - Added functions to **create UTexture from arrays of byte or float**.
    - Fixed a bug that some UTexture cannot be processed by `TextureProcessComponent`.
        - Now `BP_TextureProcessComponent` is deprecated. Use `TextureProcessComponent` instead.
- Updated CustomizedOpenCV module
    - Removed OpenCV's `check` function to avoid conflict with UE4's `check` macro.
- Added example projects
    - Added an example for [**depth estimation using a monocular RGB camera**](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE4).
    - Added an example for [**arbitrary artistic style transfer**](https://github.com/Akiya-Research-Institute/Artistic-Style-Transfer-on-UE4).


## v1.1 (Feb 11, 2022)
- Added support for Ubuntu 18.04.6 Desktop 64bit
    - GPU accelerations by CUDA and TensorRT supported.
        - You need an NVIDIA GPU which supports CUDA, cuDNN, and TensorRT.
        - You need to install CUDA ver 11.4.2, cuDNN ver 8.2.4, and TensorRT ver 8.2.3.0.
        - DNN models which contain unsupported operators cannot be loaded when TensorRT is enabled.  
            See [the official document](https://github.com/onnx/onnx-tensorrt/blob/85e79f629fb546a75d61e3027fb259a9529144fe/docs/operators.md) for supported operators.
            (NNEngine uses TensorRT 8.2 as backend on Linux)
    - Tested environment:
        - Unreal Engine: 4.26.2, 4.27.2
        - Vulkan utils: 1.1.70+dfsg1-1ubuntu0.18.04.1
        - .NET SDK: 6.0.101-1
        - OS: Ubuntu 18.04.6 Desktop 64bit
        - CPU: Intel i3-8350K
        - GPU: NVIDIA GeForce GTX 1080 Ti
            - Driver: 470.130.01
            - CUDA: 11.4.2-1
            - cuDNN: 8.2.4
            - TensorRT: 8.2.3.0
- Added EXPERIMENTAL support for Android as target build
    - Tested environment:
        - Device: Xiaomi Redmi Note 9S
        - Android version: 10 QKQ1.191215.002
    - Note:
        - You need to convert your model to ORT format.  
            See [the official document](https://onnxruntime.ai/docs/reference/ort-model-format.html) for the details.
        - There are some DNN models which cannot be loaded on Android.
        - NNEngine uses ONNX Runtime Mobile ver 1.8.1 on Android.
    - GPU acceleration by NNAPI is not tested yet.
    
## v1.0 (Dec 21, 2021)
- First release.