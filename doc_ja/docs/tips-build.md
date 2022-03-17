# 大きなライブラリを除外してビルドする

## CUDAとTensorRTの無効化

このプラグインには、大きなサイズ（162MB）のDLL「`onnxruntime_providers_cuda.dll`」が含まれています。パッケージ化したゲームのサイズを小さくするために、これを除外したくなるかもしれません。  
その場合、下記手順にしたがって、CUDA および TensorRT の [execution provider](https://onnxruntime.ai/docs/execution-providers/) を無効にすることできます。

1. `(UE4インストールパス)/Engine/Plugins/Marketplace/NNEngine/Source/OnnxRuntime/OnnxRuntime.Build.cs`を開きます。
2. ファイルの20行目と21行目を下記の通り変更します。

    変更前

  		bool doUseCuda = true;
  		bool doUseTensorRT = true;

    変更後

  		bool doUseCuda = false;
  		bool doUseTensorRT = false;

3. プロジェクトをビルドします。

## OpenCVの無効化

このプラグインには、大きなサイズ（50MB）のDLL「`opencv_world440.dll`」が含まれています。パッケージ化したゲームのサイズを小さくするために、これを除外したくなるかもしれません。あるいは、他のライブラリとの競合を避けるために、OpenCV自体を使いたくない場合があるかもしれません。  
その場合、下記手順にしたがって、OpenCVに依存しないモードに切り替えることができます。

1. `(UE4インストールパス)/Engine/Plugins/Marketplace/NNEngine/Source/CustomizedOpenCV/CustomizedOpenCV.Build.cs`を開きます。
2. ファイルの20行目を下記の通り変更します。

    変更前

        bool doUseCustomizedOpenCv = true;

    変更後

        bool doUseCustomizedOpenCv = false;

3. プロジェクトをビルドします。

なお、OpenCVに依存しないモードに切り替えると、`UTextureProcessFunctionLibrary`で定義されている下記の関数は呼び出しても何も起こらなくなることに注意してください。

- showImage
- showImageFloat
- showImageWith2dPoints
- showImageWith3dPoints
- convertToIntImage