# デモプロジェクトの概要

デモプロジェクトは、単一のRGBカメラを用いた人物姿勢推定、表情キャプチャ、アイトラッキングのサンプルです。

## 環境

- Windows 10 64bit, Linux x64 (Ubuntu 18.04.6)
- Unreal Engine 4.26
- [NNEngine plugin](https://www.unrealengine.com/marketplace/product/74892c770dc149b1b5c4e872804e6ade)

- For Windows
    - [公式ドキュメント](https://docs.unrealengine.com/4.27/en-US/ProductionPipelines/DevelopmentSetup/VisualStudioSetup/)の通りに、Visual Studioをインストールしておく必要があります。
- For Linux
    - Visual Studio Codeの使用をおすすめします。[こちらのガイド](https://zenn.dev/akiya_souken/articles/use-ue4-on-linux-with-vscode)にインストール手順を記載しています。  

## ダウンロード

[GitHub](https://github.com/Akiya-Research-Institute/NNEngine-Demo)で公開しています。  
[リリースページ](https://github.com/Akiya-Research-Institute/NNEngine-Demo/releases)からダウンロードしてください。  

## デモの実行

=== "Windows"

    1. ダウンロードしたzipファイルを展開し、NNEngineDemo.uprojectをダブルクリックします。初回起動時は、C++ソースのビルドが必要です。
    2. 起動後、エディタ上で「Play」をクリックすると、事前に撮影された動画に対してAIでの推定を実行するデモが開始されます。  
    3. 自分のウェブカメラで実行するには、「Content\NNEngineDemo\Tutorial.uasset」の指示に従って、WebcamMediaPlayerのVideoに使用したいウェブカメラを指定します。  

=== "Linux"

    1. ダウンロードしたzipファイルを展開します。
    2. 展開したディレクトリにPluginsというディレクトリを作成し、そこにNNEngineプラグインをコピーします。
    3. NNEngineDemo.uprojectをダブルクリックします。ポップアップで、Unreal Engine 4.26のビルドを選択します。
    4. リビルドを要求されます。`No`を選択します。
    5. 生成された`NNEngineDemo.code-workspace`をダブルクリックし、VS Codeを起動します。
    6. VS Codeで、Run and Debugから`NNEngineDemoEditor (Development) (NNEngineDemo)`を選択し、Start Debuggingをクリックします。
    7. 起動後、エディタ上で「Play」をクリックすると、事前に撮影された動画に対してAIでの推定を実行するデモが開始されます。  
    8. 自分のウェブカメラで実行するには、「Content\NNEngineDemo\Tutorial.uasset」の指示に従って、WebcamMediaPlayerのVideoに使用したいウェブカメラを指定します。  

## デモのクラス構成

下記のチュートリアルで、各フォルダに入っているクラスの関係を説明しています。

- Content\NNEngineDemo\FacialCapture\Overview_FacialCapture.uasset
- Content\NNEngineDemo\MotionCapture_Bp\Overview_PoseEstimation.uasset
- Content\NNEngineDemo\MotionCapture_Cpp\Overview_PoseEstimation_Cpp.uasset

## 実装の説明

下記のチュートリアルで、実装を説明しています。

- Content\NNEngineDemo\MotionCapture_Bp\Details_PoseEstimation.uasset