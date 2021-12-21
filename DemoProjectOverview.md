# Demo project overview / デモプロジェクトの概要

Demo project shows examples of human pose estimation and facial capture using a single RGB camera.  
デモプロジェクトは、単一のRGBカメラを用いた人物姿勢推定、表情キャプチャ、アイトラッキングのサンプルです。

## Environment / 環境

- Windows 10
- Unreal Engine 4.26
- [NNEngine plugin](https://www.unrealengine.com/marketplace/product/74892c770dc149b1b5c4e872804e6ade)
- Visual Studio is required to be installed. See [the official documentation](https://docs.unrealengine.com/4.27/en-US/ProductionPipelines/DevelopmentSetup/VisualStudioSetup/) for how to install.  
   [公式ドキュメント](https://docs.unrealengine.com/4.27/en-US/ProductionPipelines/DevelopmentSetup/VisualStudioSetup/)の通りに、Visual Studioをインストールしておく必要があります。

## Download / ダウンロード

Demo project is available on [GitHub](https://github.com/Akiya-Research-Institute/NNEngine-Demo).  
Please download from the [release](https://github.com/Akiya-Research-Institute/NNEngine-Demo/releases) page.

[GitHub](https://github.com/Akiya-Research-Institute/NNEngine-Demo)で公開しています。  
[リリースページ](https://github.com/Akiya-Research-Institute/NNEngine-Demo/releases)からダウンロードしてください。  

## Run the demo / デモの実行

1. Extract the downloaded zip file and double-click NNEngineDemo.uproject. The first time you start it, you need to build the C++ source.
2. After launching, click "Play" on the editor to start the demo that performs AI estimation for the pre-recorded video.
3. To run on your webcam, follow the instructions in "Content\NNEngineDemo\Tutorial.uasset" and specify the webcam you want to use in WebcamMediaPlayer's Video.

1. ダウンロードしたzipファイルを展開し、NNEngineDemo.uprojectをダブルクリックします。初回起動時は、C++ソースのビルドが必要です。
2. 起動後、エディタ上で「Play」をクリックすると、事前に撮影された動画に対してAIでの推定を実行するデモが開始されます。  
3. 自分のウェブカメラで実行するには、「Content\NNEngineDemo\Tutorial.uasset」の指示に従って、WebcamMediaPlayerのVideoに使用したいウェブカメラを指定します。  

## Classes in the demo / デモのクラス構成

The tutorial below explains the relationships between the classes in each folder.  
下記のチュートリアルで、各フォルダに入っているクラスの関係を説明しています。
- Content\NNEngineDemo\FacialCapture\Overview_FacialCapture.uasset
- Content\NNEngineDemo\MotionCapture_Bp\Overview_PoseEstimation.uasset
- Content\NNEngineDemo\MotionCapture_Cpp\Overview_PoseEstimation_Cpp.uasset

## Implementation of the demo / 実装の説明

The tutorial below explains the implementation.  
下記のチュートリアルで、実装を説明しています。
- Content\NNEngineDemo\MotionCapture_Bp\Details_PoseEstimation.uasset