# よくある質問

## ウェブカメラを使うにはどうすればいいですか？

[公式ドキュメント](https://docs.unrealengine.com/4.27/en-US/WorkingWithMedia/IntegratingMedia/MediaFramework/HowTo/UsingWebCams/)をご覧ください。

!!! Warning "UE5+D3D12ではウェブカメラはサポートされていません (UE5.0.3時点)"
    
    UE4かUE5+D3D11か[WebCameraFeed plugin](https://github.com/bakjos/WebCameraFeed)か[OpenCV](https://docs.opencv.org/4.x/d8/dfe/classcv_1_1VideoCapture.html#aabce0d83aa0da9af802455e8cf5fd181)を使用してください。

## 3Dの人物姿勢推定をするにはどうすればいいですか？

単眼カメラで3Dの人物姿勢推定ができる[MediaPipe Poseモデル](https://google.github.io/mediapipe/solutions/pose.html)を使用するのが一つの方法です。  
ONNX版のモデルを[PINTO_model_zoo](https://github.com/PINTO0309/PINTO_model_zoo/tree/main/053_BlazePose)様からダウンロードできます。

## キャラクターに姿勢推定の結果を適用するにはどうすればいいですか？

最も簡単な方法は、公式の[Full-body IK plugin](https://docs.unrealengine.com/5.0/en-US/control-rig-full-body-ik-in-unreal-engine/)を使うことです。  
また、私たちのモーションキャプチャアプリからデータを[受信するための無料プラグイン](https://github.com/Akiya-Research-Institute/MocapForAll-Receiver-Plugin-for-UE4)は、Control Rigで実装されており、参考になるかと思います。
