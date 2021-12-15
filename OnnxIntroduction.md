# Overview of ONNX / ONNXの概要

For those who have never used AI in ONNX format, here is a brief overview of ONNX.  
If you know the basics of ONNX, you don't need to read this.  

ONNX形式でAIを扱ったことがない人向けに、ONNXについて簡単に概要を説明します。  
ONNXについて基本的なことをご存じの方は、読む必要はありません。

--

## What's ONNX? / ONNXとは？

ONNX  
= Open Neural Network eXchange  
= オープンなニューラルネットの相互変換フォーマット、というような意味

- A format to use AI in various environment.
- [You can create files in this format from various machine learning frameworks](https://github.com/onnx/tutorials#converting-to-onnx-format), [and you can run AI on various platforms with this format.](https://onnxruntime.ai/docs/execution-providers/#contents)
- 
- AIを様々な環境で使うためのファイル形式。
- [様々な機械学習フレームワークからこの形式のファイルを作成でき](https://github.com/onnx/tutorials#converting-to-onnx-format)、この形式にしておけば[様々なプラットフォームでAIを実行できる](https://onnxruntime.ai/docs/execution-providers/#contents)

![](images/ONNX_Runtime_EP1.png)  
(https://onnxruntime.ai/docs/execution-providers/ より引用)

--

## How to get ONNX file / ONNXファイルの入手方法

You can make it yourself from PyTorch, TensorFlow, etc. Also there are kind people who publish ONNX format AI for free.

- (Example 1) [ONNX Model Zoo] (https://github.com/onnx/models): ONNX official  
- (Example 2) [PINTO model zoo] (https://github.com/PINTO0309/PINTO_model_zoo): A repository where PINTO shares the results of optimization of various models. Various formats are provided, including ONNX.  

Check the license carefully before using them.🙏  


PyTorchやTensorFlowなどから自分で作ってもいいですが、ONNX形式のAIを無料で公開してくれている親切な人が世の中にはいます。

- (例1) [ONNX Model Zoo](https://github.com/onnx/models) : ONNX公式
- (例2) [PINTO model zoo](https://github.com/PINTO0309/PINTO_model_zoo) : PINTO氏が様々なモデルを最適化した結果を共有しているリポジトリ。ONNXを含む様々な形式が提供されている。  

ライセンスをよく確認した上で、ありがたく使わせていただきましょう。🙏

--

## How to use ONNX / ONNXの使用方法

Roughly there are 4 steps.  

1. Load the ONNX file.
2. Specify the input data source.
3. Specify the output data destination.
4. Run.

See [the Official Documentation](https://onnxruntime.ai/docs/get-started/) for the details.  
NNEngine provides convenient functions to execute 1 to 4 above.  


大まかには、下記の4ステップです。

1. ONNXファイルをロードする
2. データ入力元を指定する
3. データ出力先を指定する
4. 処理を実行する

より詳細は、[公式ドキュメント](https://onnxruntime.ai/docs/get-started/)を参照してください。  
NNEngineは、上記1～4を実行するための便利な関数を提供します。  

--

## (Appendix) Editing ONNX file / （付録）ONNXファイルの編集

Sometimes you need to edit an ONNX file a little.  
(For example, when you want to combine two ONNX files into one.)  
A useful technique in such cases is to convert ONNX to text format, edit it with a text editor, and then convert it back to the original format.  
See [this page](https://zenn.dev/akiya_souken/articles/directly-edit-onnx-file-in-text-format_en) if you are interested.

Model Zooなどから入手したONNX形式のファイルを、ちょっとだけ編集したいことがしばしばあります。  
（入出力の仕様を変えたい、二つのモデルをくっつけたい、等）  
そんなときに便利なテクニックとして、ONNXをテキスト形式に変換し、テキストエディタで編集してから元の形式に戻すというものがあります。  
具体的なやり方は[こちらのページ](https://zenn.dev/akiya_souken/articles/directly-edit-onnx-file-in-text-format)で紹介しているので、ご興味のある方はどうぞ。
