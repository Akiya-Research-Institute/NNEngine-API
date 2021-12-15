# Demo project overview / デモプロジェクトの概要

Demo project shows examples of human pose estimation and facial capture using a single RGB camera.
デモプロジェクトは、単一のRGBカメラを用いた人物姿勢推定、表情キャプチャ、アイトラッキングのサンプルです。

## Environment / 環境

- Windows 10
- Unreal Engine 4.27
- [公式ドキュメント](https://docs.unrealengine.com/4.27/en-US/ProductionPipelines/DevelopmentSetup/VisualStudioSetup/)の通りに、Visual Studioをインストールしておく必要があります。

## Download / ダウンロード

[GitHub](https://github.com/Akiya-Research-Institute/NNEngine-Demo)で公開しています。
[リリースページ](https://github.com/Akiya-Research-Institute/NNEngine-Demo/releases)からダウンロードしてください。

## Run the demo / デモの実行

1. ダウンロードしたzipファイルを展開し、NNEngineDemo.uprojectをダブルクリックします。初回起動時は、C++ソースのビルドが必要です。
2. 起動後、エディタ上で「Play」をクリックすると、事前に撮影された動画に対してAIでの推定を実行するデモが開始されます。  
3. 自分のウェブカメラで実行するには、「Content\NNEngineDemo\Tutorial.uasset」の指示に従って、WebcamMediaPlayerのVideoに使用したいウェブカメラを指定します。  

## Classes in demo / デモのクラス構成

下記のチュートリアルで、各フォルダに入っているクラスの関係を説明しています。
- Content\NNEngineDemo\FacialCapture\Overview_FacialCapture.uasset
- Content\NNEngineDemo\MotionCapture_Bp\Overview_PoseEstimation.uasset
- Content\NNEngineDemo\MotionCapture_Cpp\Overview_PoseEstimation_Cpp.uasset

## Important classes / 実装の説明

下記のチュートリアルで、実装を説明しています。
- Content\NNEngineDemo\MotionCapture_Bp\Overview_BP_PoseDetector.uasset