# DirectXUtilityモジュールの使い方

Windowsのみ動作します。  
デモプロジェクトの「Content\NNEngineDemo\Common\WidgetToChangeCpuGpu.uasset」に例があります。

1. 「Get Gpu Info」ノードを呼び出すと、PCで利用可能なGPUのリストであるGpu Info構造体の配列が取得できます。
2. Gpu Info構造体から、デバイスIDと名前が取得できます。
3. このデバイスIDをUOnnxModelWrapperまたはOnnxModelの初期化時に指定することで、使用するGPUを指定できます。

![Get GPU Info](images/GetGpuInfo.png)