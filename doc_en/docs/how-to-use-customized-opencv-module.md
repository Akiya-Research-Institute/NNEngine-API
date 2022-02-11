# How to use CustomizedOpenCV module

Based on OpenCV 4.4.0, some functions are disabled so that it can be built with Unreal Engine.  
It can be used in C++ by including the OpenCV header as shown below.  

```
#undef check // the check macro causes problems with opencv headers
#include "opencv2/core/core.hpp"
```
Note that this module is created only for use from the TextureProcessing module, and not all OpenCV functions can be used.  
See [the official documentation](https://opencv.org/) for how to use OpenCV itself.  