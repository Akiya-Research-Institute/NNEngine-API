# 変更履歴

## v1.2 (2022-02-18)
- TextureProcessingモジュールを更新しました。
    - **UTextureをfloat配列に変換**するコンポーネントを追加しました。(`TextureProcessFloatComponent`)
    - **byteまたはfloatの配列からUTextureを生成**する機能を追加しました。
    - 一部のUTextureが`TextureProcessComponent`で処理できない不具合を修正しました。
        - `BP_TextureProcessComponent`は非推奨になりました。代わりに`TextureProcessComponent`を使ってください。
- CustomizedOpenCVモジュールを更新しました。
    - UE4の`check`マクロとの競合を避けるため、OpenCVの`check`関数を削除しました。
- サンプルプロジェクトを追加しました。
    - [**単眼RGBカメラによる深度推定**](https://github.com/KenjiAsaba/Monocular-Depth-Estimation-on-UE4)の例を追加しました。
    - [**任意アートスタイル転送**](https://github.com/KenjiAsaba/Artistic-Style-Transfer-on-UE4)の例を追加しました。


## v1.1 (2022-02-11)
- **Ubuntu 18.04.6 Desktop 64bitに対応**しました。
    - CUDA、TensorRTによるGPUアクセラレーションに対応しました。
        - CUDA、cuDNN、TensorRTをサポートするNVIDIA GPUが必要です。
        - CUDA ver 11.4.2, cuDNN ver 8.2.4, TensorRT ver 8.2.3.0 をインストールする必要があります。
        - TensorRTを有効にすると、未対応の演算子を含むDNNモデルを読み込むことができません。 
            対応する演算子は、[公式ドキュメント](https://github.com/onnx/onnx-tensorrt/blob/85e79f629fb546a75d61e3027fb259a9529144fe/docs/operators.md)をご覧ください。
            (NNEngineはLinuxではTensorRT 8.2を使用しています)
    - テスト済み環境:
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
- **実験的にAndroid向けのビルドに対応**しました。
    - テスト済み環境:
        - Device: Xiaomi Redmi Note 9S
        - Android version: 10 QKQ1.191215.002
    - 留意点:
        - モデルをORT形式に変換する必要があります。  
            変換の詳細は[公式ドキュメント](https://onnxruntime.ai/docs/reference/ort-model-format.html)をご覧ください。
        - Androidで読み込めないDNNモデルがあることがわかっています。
        - NNEngineは、AndroidではONNX Runtime Mobile ver 1.8.1を使用しています。
    - NNAPIによるGPUアクセラレーションは未検証です。
    
## v1.0 (2021-12-21)
- First release.