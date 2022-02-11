# Build without CUDA and TensorRT

This plugin contains a large (162MB) DLL, "onnxruntime_providers_cuda.dll". You may want to exclude it to reduce packaged game size.  
To do that, you need to disable CUDA and TensorRT [execution providers](https://onnxruntime.ai/docs/execution-providers/) by following the steps below:

- Open "(Your installation path of UE4)/Engine/Plugins/Marketplace/NNEngine/Source/OnnxRuntime/OnnxRuntime.Build.cs"
- Change line 20 and 21 as follows:

  Before

  		bool doUseCuda = true;
  		bool doUseTensorRT = true;

  After

  		bool doUseCuda = false;
  		bool doUseTensorRT = false;

- Build the project.
