# NNEngine overview {#mainpage}

- A code plugin for [Unreal Engine 4](https://www.unrealengine.com/) to use [ONNX](https://onnx.ai/) model.
- Provides easy and accelerated ML inference functions callable from BP and C++ using [ONNX Runtime](https://onnxruntime.ai/) native library.
- Visit our store page for details.



- [Unreal Engine 4](https://www.unrealengine.com/) で [ONNX](https://onnx.ai/) モデルを動かすためのプラグインです。
- ブループリントとC++から機械学習推論を簡単・高速実行できる機能を提供します。内部では[ONNX Runtime](https://onnxruntime.ai/)ネイティブライブラリを使用しています。
- 詳細はストアページをご覧ください。



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
