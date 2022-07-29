# FAQ

## How can I use webcams?

See the [official doc](https://docs.unrealengine.com/4.27/en-US/WorkingWithMedia/IntegratingMedia/MediaFramework/HowTo/UsingWebCams/).  

!!! Warning "UE5+D3D12 does not support webcam input"
    
    Use UE4 or UE5+D3D11 or [WebCameraFeed plugin](https://github.com/bakjos/WebCameraFeed) or [OpenCV](https://docs.opencv.org/4.x/d8/dfe/classcv_1_1VideoCapture.html#aabce0d83aa0da9af802455e8cf5fd181).

## How can I perform 3D human pose estimation?

You can try the [MediaPipe Pose model](https://google.github.io/mediapipe/solutions/pose.html), which estimates 3D pose with a single camera.  
You can download the ONNX version of the model from [PINTO_model_zoo](https://github.com/PINTO0309/PINTO_model_zoo/tree/main/053_BlazePose).

## How can I apply the results of pose estimation to a character?

The easiest way is to use the official [Full-body IK plugin](https://docs.unrealengine.com/5.0/en-US/control-rig-full-body-ik-in-unreal-engine/).  
Also, you can check our free [Receiver plugin](https://github.com/Akiya-Research-Institute/MocapForAll-Receiver-Plugin-for-UE4) for our mocap app, which is implemented with Control Rig.
