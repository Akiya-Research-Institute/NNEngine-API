# NNEngine overview {#mainpage}

- A code plugin for [Unreal Engine 4](https://www.unrealengine.com/) to use [ONNX](https://onnx.ai/) model.
- Provides functions for easy and accelerated ML inference callable from BP and C++ using [ONNX Runtime](https://onnxruntime.ai/) native library.
- Example project of human pose estimation and facial capture using a single RGB camera are available.
- Visit our store page for details.



- [Unreal Engine 4](https://www.unrealengine.com/) で [ONNX](https://onnx.ai/) モデルを動かすためのプラグインです。
- ブループリントとC++から機械学習推論を簡単・高速実行できる機能を提供します。内部では[ONNX Runtime](https://onnxruntime.ai/)ネイティブライブラリを使用しています。
- 人物姿勢推定と表情のキャプチャのサンプルプロジェクトも提供されています。
- 詳細はストアページをご覧ください。



# How to use

## Get ONNX model

You need an ONNX model to use this plugin. If you do not have one, 

- Visit [ONNX model zoo](https://github.com/onnx/models), a collection of pre-trained, state-of-the-art models.
- [Convert your model](https://github.com/onnx/tutorials#converting-to-onnx-format) from other frameworks.
- I also recommend to visit [PINTO_model_zoo](https://github.com/PINTO0309/PINTO_model_zoo#pinto_model_zoo), which has a lot of useful ONNX model.



## Load ONNX model

### BP

1. Create a Blueprint and add a variable of UOnnxModelWrapper.
2. Construct UOnnxModelWrapper and call "Init".
   - Specify the path to the ONNX model
   - Specify whether to use CPU or GPU, and which GPU to use.
     - To get available GPUs on the system, call "Get Gpu Info"

### C++

1. Create a Blueprint and add a variable of OnnxModel.
2. Call the constructor of OnnxModel.
   - Specify the path to the ONNX model
   - Specify whether to use CPU or GPU, and which GPU to use.
     - To get available GPUs on the system, call "UDirectXUtilityLibrary::GetGpuInfo()"

## Set input of the model

### BP

1. Call "Get Input Tensor Info" to confirm the order of the input tensors as well as their types and sizes.
2. Add variables of byte, integer, integer64, or float array whose type and size match the previous result.
3. Call "Bind Input xxx Array" to specify the pre-allocated memory from which the ONNX model reads the input data.

### C++

1. Get "inputTensorsInfo" member to confirm the order of the input tensors as well as their types and sizes.
2. Add variables of array whose size in bytes match the previous result.
3. Call "bindInput" to specify the pre-allocated memory from which the ONNX model reads the input data.

## Set output of the model

### BP

1. Call "Get Output Tensor Info" to confirm the order of the output tensors as well as their types and sizes.
2. Add variables of byte, integer, integer64, or float array whose type and size match the previous result.
3. Call "Bind Output xxx Array" to specify the pre-allocated memory to which the ONNX model writes the output data.

### C++

1. Get "outputTensorsInfo" member to confirm the order of the output tensors as well as their types and sizes.
2. Add variables of array whose size in bytes match the previous result.
3. Call "bindOutput" to specify the pre-allocated memory to which the ONNX model writes the output data.

## Run

1. Set data to the pre-allocated arrays of input.
2. Call "Run".
3. Get data from the pre-allocated arrays of output.

# Tips

## Build without CUDA and TensorRT

This plugin contains a large (162MB) DLL, "onnxruntime_providers_cuda.dll". You may want to exclude it to reduce packaged game size.  
To do that, you need to disable CUDA and TensorRT [execution providers](https://onnxruntime.ai/docs/execution-providers/) by following the steps below:

- Open "(Your installation path of UE4)/Engine/Plugins/Marketplace/NNEngine/Source/OnnxRuntime/OnnxRuntime.Build.cs"

- Change line 20 and 21 as follows:

  Before

  		bool doUseCuda = true;
  		bool doUseTensorRT = true;

  After

  		bool doUseCuda = false;
  		bool doUseTensorRT = false;

- Build the project.



このプラグインには、大きなサイズ（162MB）のDLL「onnxruntime_providers_cuda.dll」が含まれています。パッケージ化したゲームのサイズを小さくするために、これを除外したくなるかもしれません。
その場合、下記手順にしたがって、CUDA および TensorRT の [execution provider](https://onnxruntime.ai/docs/execution-providers/) を無効にする必要があります。

- "(UE4インストールパス)/Engine/Plugins/Marketplace/NNEngine/Source/OnnxRuntime/OnnxRuntime.Build.cs"を開きます。

- 20行目と21行目を下記の通り変更します。

  変更前

  		bool doUseCuda = true;
  		bool doUseTensorRT = true;

  変更後

  		bool doUseCuda = false;
  		bool doUseTensorRT = false;

- プロジェクトをビルドします。



# Changelog

- v1.0 (2021-11-dd)
  - First release.
