# 最新バージョンのONNX Runtimeを使う

Windows向けでバージョン1.8以外バージョンのONNX Runtimeを使用するには、下記の手順を実行してください。  
（現在、この方法はUE5.2版でのみ機能します）

## ONNX Runtimeのビルド

- DirectML、CUDA、TensorRTを有効にしてONNX Runtimeをビルドします。  
  ビルド手順は公式ドキュメントをご覧ください。

- v1.15.1については[開発環境にてビルド済みのバイナリファイルをこちらからダウンロード可能](https://d3ohm2q3tvfr8c.cloudfront.net/onnxruntime-win-1.15.1.zip)ですが、正しく動作することを保証しません。

    ??? Info "v1.15.1で使用するCUDA等のバージョン"

        下記のバージョンで動作確認を行いました。

        - CUDA 11.8.0
        - cuDNN 8.9.2
        - TensorRT 8.6.1.6

        使用したGPUは下記です。

        - NVIDIA GeForce RTX 3070

## NNEngineプラグインの設定変更

- プラグインフォルダをエンジンフォルダからプロジェクトフォルダにコピーします。

    ```
    コピー元：<UE install folder>/Engine/Plugins/Marketplace/NNEngine>
    コピー先：<Project folder>/Plugins/NNEngine>
    ```

- 下記のファイルを開きます。

    ```
    <Project folder>/Plugins/NNEngine/Source/OnnxRuntimeNNEngine/OnnxRuntimeNNEngine.Build.cs>
    ```

    このファイルの25行目を書き換えます。

    ```
    int ortApiVersion = <使用するONNX RuntimeのAPIバージョン。例えば、ONNX Runtime v1.15.1なら「15」>; 
    ```

## ONNX Runtimeの置き換え

- ビルドしたONNX Runtimeで下記のフォルダを置き換えます。

    ```
    <Project folder>/Plugins/NNEngine/Source/ThirdParty/onnxruntime>
    ```

- 必要なDLLを全て下記のフォルダに移動します。

    ```
    <Project folder>/Plugins/NNEngine/Source/ThirdParty/onnxruntime/bin>
    ```

    対象DLL

    - `onnxruntime.dll`
    - `onnxruntime_providers_shared.dll`
    - `onnxruntime_providers_cuda.dll`
    - `onnxruntime_providers_tensorrt.dll`
    - `DirectML.dll`
    - `zlibwapi.dll`

    開発環境でビルド済みのv1.15.1のバイナリについては、この作業は実施済みです。