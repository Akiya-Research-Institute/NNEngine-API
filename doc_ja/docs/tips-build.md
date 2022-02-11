# CUDAとTensorRTを除外してビルドする

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