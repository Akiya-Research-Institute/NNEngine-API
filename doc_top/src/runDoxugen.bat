rem set frompath="..\..\..\NNEngine"
set frompath="F:\GitHub\NNEngine"
set doxypath=".."

rd /s /q  %doxypath%\Plugins
rd /s /q  %doxypath%\html

mkdir %doxypath%\Plugins
mkdir %doxypath%\Plugins\NNEngine
mkdir %doxypath%\Plugins\NNEngine\Source
mkdir %doxypath%\Plugins\NNEngine\Source\OnnxRuntime
mkdir %doxypath%\Plugins\NNEngine\Source\OnnxRuntime\Public
mkdir %doxypath%\Plugins\NNEngine
mkdir %doxypath%\Plugins\NNEngine\Source
mkdir %doxypath%\Plugins\NNEngine\Source\TextureProcessing
mkdir %doxypath%\Plugins\NNEngine\Source\TextureProcessing\Public
rem mkdir %doxypath%\Plugins\WebcamFacialCapture
rem mkdir %doxypath%\Plugins\WebcamFacialCapture\Source
rem mkdir %doxypath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture
rem mkdir %doxypath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture\Public
rem mkdir %doxypath%\Plugins\WebcamMotionCapture
rem mkdir %doxypath%\Plugins\WebcamMotionCapture\Source
rem mkdir %doxypath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture
rem mkdir %doxypath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture\Public

xcopy /Y %frompath%\Plugins\NNEngine\Source\OnnxRuntime\Public                   %doxypath%\Plugins\NNEngine\Source\OnnxRuntime\Public
xcopy /Y %frompath%\Plugins\NNEngine\Source\TextureProcessing\Public             %doxypath%\Plugins\NNEngine\Source\TextureProcessing\Public
rem xcopy /Y %frompath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture\Public %doxypath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture\Public
rem xcopy /Y %frompath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture\Public %doxypath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture\Public

del %doxypath%\Plugins\NNEngine\Source\OnnxRuntime\Public\OnnxRuntime.h
del %doxypath%\Plugins\NNEngine\Source\TextureProcessing\Public\TextureProcessing.h
rem del %doxypath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture\Public\WebcamFacialCapture.h
rem del %doxypath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture\Public\WebcamMotionCapture.h

cd %doxypath%
"C:\Program Files\doxygen\bin\doxygen.exe" src\Doxyfile

del html\_texture_process_function_library_8h_source.html
rem del html\_eye_estimator_8h_source.html
rem del html\_face_detector_8h_source.html
rem del html\_face_estimator_8h_source.html
del html\_onnx_model_8h_source.html
del html\_onnx_model_wrapper_8h_source.html
del html\_onnx_utility_library_8h_source.html
rem del html\_pose_detector_8h_source.html
rem del html\_pose_estimator_8h_source.html
del html\_texture_process_component_8h_source.html
del html\_texture_process_component_base_8h_source.html
del html\_texture_process_float_component_8h_source.html

rd /s /q  Plugins
rd /s /q  latex
