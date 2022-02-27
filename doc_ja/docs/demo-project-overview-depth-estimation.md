# 単眼深度推定サンプル

単一のRGBカメラを用いた深度推定のサンプルプロジェクトです。  

<iframe width="560" height="315" src="https://www.youtube.com/embed/glq34Wdi_3w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 環境

- Windows 10 64bit
- Unreal Engine 4.26.2
- [NNEngine plugin](https://www.unrealengine.com/marketplace/product/74892c770dc149b1b5c4e872804e6ade) v1.2 or above

## ダウンロード

[GitHub](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE4)で公開しています。  
[リリースページ](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE4/releases)からダウンロードしてください。  

## デモの実行

1. ダウンロードしたzipファイルを展開し、MonoDepthEstimation.uprojectをダブルクリックします。
2. 起動後、エディタ上で「Play」をクリックすると、事前に撮影された動画に対してAIでの推定を実行するデモが開始されます。  
3. 自分のウェブカメラで実行するには、/Content/Common/MediaPlayer_webcam.uassetのVideoに使用したいウェブカメラを指定します。  

## 実装の詳細チュートリアル

<iframe width="560" height="315" src="https://www.youtube.com/embed/sTSlhYOePDE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 追加モデル

### Largeモデル

Largeモデル(入力画像サイズが384x384ピクセル)を使用するには、[こちら(GitHub Release page)](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE4/releases/download/v1.1/midas_1x384x384xBGRxByte.onnx)または[こちら(Google Drive)](https://drive.google.com/file/d/1ml45494AGppnSZ3ivhw-HPi9CE8hxY2J/view?usp=sharing)からダウンロードし、`Source\ThirdParty\Models`の下に配置してください。

### DPTモデル

DPTモデルを使用するには、[こちら(GitHub Release page)](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE4/releases/download/v1.3/dpt_hybrid_256x320.onnx)または[こちら(Google Drive)](https://drive.google.com/file/d/12mLc0usb0qLb5LlKhE1EEQhP7Kyp1qiH/view?usp=sharing)からダウンロードし、`Source\ThirdParty\Models`の下に配置します。次に、`/Content/DepthEstimation/DPT/test_DPT.map`を開き、「Play」をクリックします。

## プレビューメッシュへのカメラ画像の表示

/Content/DepthEstimation/Grayscale_WPO.uassetのBase Colorを切り替えることで、カメラ画像をプレビューメッシュに表示できます。

## モデル詳細

このサンプルで使用しているモデルの詳細は下記をご覧ください。  

### 通常およびLargeモデル

- [Towards Robust Monocular Depth Estimation: Mixing Datasets for Zero-shot Cross-dataset Transfer](https://arxiv.org/abs/1907.01341)
- [GitHub](https://github.com/isl-org/MiDaS)

### DPTモデル

- [Vision Transformers for Dense Prediction](https://arxiv.org/abs/2103.13413)
- [GitHub](https://github.com/isl-org/DPT)

ONNXへの変換は、下記を利用させていただきました。

- [PINTO_model_zoo](https://github.com/PINTO0309/PINTO_model_zoo)