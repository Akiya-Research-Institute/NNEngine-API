# 任意アートスタイル転送サンプル

アートスタイルを表現する任意の画像と、コンテンツを表現する任意の画像を組み合わせて、新しい画像を生成するサンプルです。  

<iframe width="560" height="315" src="https://www.youtube.com/embed/_v0ZNogoK6w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 環境

- Windows 10 64bit
- Unreal Engine 4.26.2
- [NNEngine plugin](https://www.unrealengine.com/marketplace/product/74892c770dc149b1b5c4e872804e6ade) v1.2 or above

## ダウンロード

[GitHub](https://github.com/Akiya-Research-Institute/Artistic-Style-Transfer-on-UE4)で公開しています。  
[リリースページ](https://github.com/Akiya-Research-Institute/Artistic-Style-Transfer-on-UE4/releases)からダウンロードしてください。  

## デモの実行

1. ダウンロードしたzipファイルを展開し、ArtStyleTransfer.uprojectをダブルクリックします。
2. 起動後、/Content/NNEngineDemo-ArtisticStyleTransfer/Tutorial_ArtisticStyleTransfer.uassetの指示に従ってください。

## アートスタイルの追加

任意の画像ファイルをコンテンツブラウザにドラッグ＆ドロップしてTextureアセットを生成し、それをArtisticStyleTransfererのStyle Textureに指定することで、アートスタイルを追加できます。

## モデル詳細

このサンプルで使用しているモデルの詳細は下記をご覧ください。  

- [Exploring the structure of a real-time, arbitrary neural artistic stylization network](https://arxiv.org/abs/1705.06830)
- [TFLite Tutorial](https://www.tensorflow.org/lite/examples/style_transfer/overview)
