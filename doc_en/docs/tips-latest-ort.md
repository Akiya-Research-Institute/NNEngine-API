# Use the latest version of ONNX Runtime

To use a version of ONNX Runtime other than v1.8, please follow the steps below.  
(Currently, this method only works with the plugin for UE5.2 on Windows)

## Build ONNX Runtime

- Build ONNX Runtime with DirectML, CUDA, and TensorRT enabled.  
  See the official documentation for build instructions.

- For v1.15.1, you can [download a binary file built in the development environment](https://d3ohm2q3tvfr8c.cloudfront.net/onnxruntime-win-1.15.1.zip), but we do not guarantee that it works correctly.

    ??? Info "Versions of CUDA, cudNN, TRT used in v1.15.1"

        We have tested with the following versions:

        - CUDA 11.8.0
        - cuDNN 8.9.2
        - TensorRT 8.6.1.6

         The following GPU was used:

        - NVIDIA GeForce RTX 3070

## Change settings of NNEngine plugin

- Copy the plugin folder from the engine folder to the project folder.

    ```
    Copy from：<UE install folder>/Engine/Plugins/Marketplace/NNEngine>
    Copy to：<Project folder>/Plugins/NNEngine>
    ```

- Open the following file:

    ```
    <Project folder>/Plugins/NNEngine/Source/OnnxRuntimeNNEngine/OnnxRuntimeNNEngine.Build.cs>
    ```

    Rewrite line 25 of this file.

    ```
    int ortApiVersion = <API version of ONNX Runtime to use. For example, "15" for ONNX Runtime v1.15.1>; 
    ```

## Replace ONNX Runtime

- Replace the following folder with your built ONNX Runtime.

    ```
    <Project folder>/Plugins/NNEngine/Source/ThirdParty/onnxruntime>
    ```

- Move all necessary DLLs to the following folder.

    ```
    <Project folder>/Plugins/NNEngine/Source/ThirdParty/onnxruntime/bin>
    ```

    DLLs

    - `onnxruntime.dll`
    - `onnxruntime_providers_shared.dll`
    - `onnxruntime_providers_cuda.dll`
    - `onnxruntime_providers_tensorrt.dll`
    - `DirectML.dll`
    - `zlibwapi.dll`

    For our pre-built v1.15.1 binaries, this step is already done.