# Monocular Depth Estimation

Example project of depth estimation using a single RGB camera.  

<iframe width="560" height="315" src="https://www.youtube.com/embed/glq34Wdi_3w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Environment

- OS: Windows 10 64bit
- Unreal Engine: 4.26.2, 5.0.0
- [NNEngine plugin](https://www.fab.com/listings/67591270-75f6-456d-aa89-c64e1e0ee05f) v1.2 or above

## Download

Demo project is available on [GitHub](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE). (To use with UE5, use [UE5 branch](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE/tree/ue5))    
Please download from the [release](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE/releases) page.

## Run the demo

1. Extract the downloaded zip file and double-click `MonoDepthEstimation.uproject`.  
2. After launching, click `Play` on the editor to start the demo that performs AI estimation for the pre-recorded video.
3. To run on your webcam, specify the webcam you want to use in `/Content/Common/MediaPlayer_webcam.uasset`.

## Step-by-step guide to implementation

<iframe width="560" height="315" src="https://www.youtube.com/embed/sTSlhYOePDE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Additional models

### Large model

If you want to use the large model (whose input image size is 384x384), download from [here (GitHub Release page)](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE/releases/download/v1.1/midas_1x384x384xBGRxByte.onnx) or [here (Google Drive)](https://drive.google.com/file/d/1ml45494AGppnSZ3ivhw-HPi9CE8hxY2J/view?usp=sharing) and place it under `Source\ThirdParty\Models`.

### DPT model

To use DPT model, download model from [here (GitHub Release page)](https://github.com/Akiya-Research-Institute/Monocular-Depth-Estimation-on-UE/releases/download/v1.3/dpt_hybrid_256x320.onnx) or [here (Google Drive)](https://drive.google.com/file/d/12mLc0usb0qLb5LlKhE1EEQhP7Kyp1qiH/view?usp=sharing) and place it under `Source\ThirdParty\Models`. Then, open `/Content/DepthEstimation/DPT/test_DPT.map` and click `Play`.

## Display camera image to the preview mesh

By switching the base color pin of `/Content/DepthEstimation/Grayscale_WPO.uasset`, you can 
display camera image to the preview mesh.

## Model details

See the following pages for the details of the model used in this project.

### Default and large models

- [Towards Robust Monocular Depth Estimation: Mixing Datasets for Zero-shot Cross-dataset Transfer](https://arxiv.org/abs/1907.01341)
- [GitHub](https://github.com/isl-org/MiDaS)

### DPT model

- [Vision Transformers for Dense Prediction](https://arxiv.org/abs/2103.13413)
- [GitHub](https://github.com/isl-org/DPT)

Converted to ONNX by

- [PINTO_model_zoo](https://github.com/PINTO0309/PINTO_model_zoo)