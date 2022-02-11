# CustomizedOpenCVモジュールの使い方

OpenCV 4.4.0をベースに、Unreal Engineでビルドできるよう一部の関数を無効にしたものです。  
C++で、下記のようにOpenCVのヘッダをインクルードすることで利用できます。

```
#undef check // the check macro causes problems with opencv headers
#include "opencv2/core/core.hpp"
```

なお、あくまでTextureProcessingモジュールからの利用のために作成されたモジュールであり、OpenCVの全ての機能が利用可能なわけではありません。  
OpenCV自体の使い方は、[公式ドキュメント](https://opencv.org/)をご覧ください。
