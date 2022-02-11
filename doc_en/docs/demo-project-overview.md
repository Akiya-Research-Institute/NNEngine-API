# Demo project overview

Demo project shows examples of human pose estimation and facial capture using a single RGB camera.  

## Environment

- OS: Windows 10 64bit or Linux x64 (Ubuntu 18.04.6)
- Unreal Engine: 4.26
- [NNEngine plugin](https://www.unrealengine.com/marketplace/product/74892c770dc149b1b5c4e872804e6ade)

- For Windows
    - Visual Studio is required to be installed. See [the official documentation](https://docs.unrealengine.com/4.27/en-US/ProductionPipelines/DevelopmentSetup/VisualStudioSetup/) for how to install.  
- For Linux
    - Visual Studio Code is recommended for IDE. See [this guide](https://zenn.dev/akiya_souken/articles/use-ue4-on-linux-with-vscode_en) for how to install.  

## Download

Demo project is available on [GitHub](https://github.com/Akiya-Research-Institute/NNEngine-Demo).  
Please download from the [release](https://github.com/Akiya-Research-Institute/NNEngine-Demo/releases) page.

## Run the demo

=== "Windows"

    1. Extract the downloaded zip file and double-click `NNEngineDemo.uproject`. The first time you start it, you need to build the C++ source.
    2. After launching, click `Play` on the editor to start the demo that performs AI estimation for the pre-recorded video.
    3. To run on your webcam, follow the instructions in `Content\NNEngineDemo\Tutorial.uasset` and specify the webcam you want to use in WebcamMediaPlayer's Video.

=== "Linux"

    1. Extract the downloaded zip file
    2. Create a directory in the extracted directory and name it `Plugins`, and copy the NNEngine plugin into it.
    3. Double-click `NNEngineDemo.uproject`. In the pop-up, select `Unreal Engine 4.26`.
    4. You will be asked to rebuild. Select `No`.
    5. Double-click the generated `NNEngineDemo.code-workspace` to start VS Code.
    6. In VS Code, select `NNEngineDemoEditor (Development) (NNEngineDemo)` from `Run and Debug`, and click Start Debugging.
    7. After launching, click `Play` on the editor to start the demo that performs AI estimation for the pre-recorded video.
    8. To run on your webcam, follow the instructions in `Content\NNEngineDemo\Tutorial.uasset` and specify the webcam you want to use in WebcamMediaPlayer's Video.

## Classes in the demo

The tutorial below explains the relationships between the classes in each folder.  

- Content\NNEngineDemo\FacialCapture\Overview_FacialCapture.uasset
- Content\NNEngineDemo\MotionCapture_Bp\Overview_PoseEstimation.uasset
- Content\NNEngineDemo\MotionCapture_Cpp\Overview_PoseEstimation_Cpp.uasset

## Implementation of the demo

The tutorial below explains the implementation.  

- Content\NNEngineDemo\MotionCapture_Bp\Details_PoseEstimation.uasset