# Build without large libraries

## Disalbe CUDA and TensorRT

This plugin contains a large (162MB) DLL, `onnxruntime_providers_cuda.dll`. You may want to exclude it to reduce packaged game size.  
To do that, you can disable CUDA and TensorRT [execution providers](https://onnxruntime.ai/docs/execution-providers/) by following the steps below:

1. Open `(Your installation path of UE4)/Engine/Plugins/Marketplace/NNEngine/Source/OnnxRuntime/OnnxRuntime.Build.cs`
2. Change line 20 and 21 as follows:

    Before

  		bool doUseCuda = true;
  		bool doUseTensorRT = true;

    After

  		bool doUseCuda = false;
  		bool doUseTensorRT = false;

3. Build the project.

## Disable OpenCV

This plugin contains a large (50MB) DLL, `opencv_world440.dll`. You may want to exclude it to reduce packaged game size, or you may want to exclude OpenCV itself in order to avoid confilicts with other library you use.  
To do that, you can disable dependency on OpenCV by following the steps below:

1. Open `(Your installation path of UE4)/Engine/Plugins/Marketplace/NNEngine/Source/CustomizedOpenCV/CustomizedOpenCV.Build.cs`
2. Change line 21 as follows:

    Before

        bool doUseCustomizedOpenCv = true;

    After

        bool doUseCustomizedOpenCv = false;

3. Build the project.

Note that if you disable dependency on OpenCV, the following functions defined in the `UTextureProcessFunctionLibrary` will not cause anything when called:

- showImage
- showImageFloat
- showImageWith2dPoints
- showImageWith3dPoints
- convertToIntImage