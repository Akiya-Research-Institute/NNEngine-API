# Installation

1. Purchase at [Fab](https://www.fab.com/listings/67591270-75f6-456d-aa89-c64e1e0ee05f) and install it.
2. Create an Unreal Engine project.
3. Open the project, open "Edit > Plugins" on the editor menu, enable "NNEngine", and restart the project.

!!! Warning "Install to Linux"
    Since the Epic Games Launcher is not provided for Linux, you need to copy the plugin manually from Windows.
    
    1. On Windows, install the plugin from Epic Games Launcher.
    2. On Linux, create a project.
    3. Copy the plugin from the UE4 plugin folder on Windows to the project directory on Linux.
        - Copy from: <*UE4 installation folder on Windows*\>\Engine\Plugins\Marketplace\NNEngine
        - Copy to: <*directory containing the .uporject created on Linux*>/Plugins/NNEngine
    4. Recreate the following symbolic links:
        - NNEngine/Source/ThirdParty/onnxruntime-linux-1.11.0/lib
            - libnvonnxparser.so
            - libnvonnxparser.so.8
        - NNEngine/Source/ThirdParty/opencv-4.5.4-linux/libs/x64
            - libopencv_world.so
            - libopencv_world.so.4.5
        