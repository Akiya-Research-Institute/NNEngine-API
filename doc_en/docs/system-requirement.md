# System Requirements

## Supported Unreal Engine version:

- 4.26
- 4.27

## Supported Platforms

| Platform                   | Development | Target Build |
| -------------------------- | ----------- | ------------ |
| Windows 10 64bit           | ✅          | ✅          |
| Ubuntu 18.04.6 Desktop 64bit | ✅          | ✅           | 
| Android                    |             | ✅(Experimental) |

!!! Warning "Model format for Android"
    To use on Android, DNN models need to be converted to ORT format. See [the official document](https://onnxruntime.ai/docs/reference/ort-format-models.html#convert-onnx-models-to-ort-format) for the details.

    !!! Warning "Known issue"
        There are some DNN models which cannot be loaded on Android.

## Supported hardware acceleration 

| Platform                   | Default CPU | GPU DirectML | GPU CUDA | GPU TensorRT | NNAPI |
| -------------------------- | ----------- | ------------ | -------- |------------- | ----- |
| Windows 10 64bit           | ✅          | ✅          | ✅       | ✅          |       |
| Ubuntu 18.04.6 Desktop 64bit | ✅          |              | ✅      | ✅          |        |
| Android                    | ✅          |              |          |             | (Not tested yet) |

- To use GPU acceleration with DirectML, a DirectX 12 capable GPU is required.
- To use GPU acceleration with CUDA and TensorRT, a supported NVIDIA GPU is required and the following versions of CUDA, cuDNN, and TensorRT are required to be installed. 

### CUDA, cuDNN, TensorRT versions

=== "Windows"

    |          | Other than RTX30** series               | RTX30** series                             |
    | -------- | --------------------------------------- | ------------------------------------------ |
    | CUDA     | 11.0.3                                  | 11.0.3                                     |
    | cuDNN    | 8.0.2 (July 24th, 2020), for CUDA 11.0  | 8.0.5 (November 9th, 2020), for CUDA 11.0  |
    | TensorRT | 7.1.3.4 for CUDA 11.0                   | 7.2.2.3 for CUDA 11.0                      |

    !!! Warning "For RTX2080Ti users"
        If you are using RTX2080Ti, you might need to use cuDNN v8.0.5. Please try various combinations.  

=== "Linux"

    |          |                                              |
    | -------- | -------------------------------------------- |
    | CUDA     | 11.4.2 for Linux x86_64 Ubuntu 18.04         |
    | cuDNN    | 8.2.4 (September 2nd, 2021), for CUDA 11.4, Linux x86_64 |
    | TensorRT | 8.2.3.0 (8.2 GA Update 2) for Linux x86_64, CUDA 11.0-11.5 |

    !!! Warning "Supported operators for TensorRT"
        On Linux, DNN models which contain unsupported operators cannot be loaded when TensorRT is enabled.  
        See [the official document](https://github.com/onnx/onnx-tensorrt/blob/85e79f629fb546a75d61e3027fb259a9529144fe/docs/operators.md) for supported operators.  
        (NNEngine uses TensorRT 8.2 as backend on Linux)
