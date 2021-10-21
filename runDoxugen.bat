set frompath="..\..\NNEngine"
set doxypath=".."

rd /s /q  %doxypath%\Plugins

mkdir %doxypath%\Plugins
mkdir %doxypath%\Plugins\OnnxRuntime
mkdir %doxypath%\Plugins\OnnxRuntime\Source
mkdir %doxypath%\Plugins\OnnxRuntime\Source\OnnxRuntime
mkdir %doxypath%\Plugins\OnnxRuntime\Source\OnnxRuntime\Public
mkdir %doxypath%\Plugins\TextureProcessing
mkdir %doxypath%\Plugins\TextureProcessing\Source
mkdir %doxypath%\Plugins\TextureProcessing\Source\TextureProcessing
mkdir %doxypath%\Plugins\TextureProcessing\Source\TextureProcessing\Public
rem mkdir %doxypath%\Plugins\WebcamFacialCapture
rem mkdir %doxypath%\Plugins\WebcamFacialCapture\Source
rem mkdir %doxypath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture
rem mkdir %doxypath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture\Public
rem mkdir %doxypath%\Plugins\WebcamMotionCapture
rem mkdir %doxypath%\Plugins\WebcamMotionCapture\Source
rem mkdir %doxypath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture
rem mkdir %doxypath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture\Public

xcopy /Y %frompath%\Plugins\OnnxRuntime\Source\OnnxRuntime\Public                 %doxypath%\Plugins\OnnxRuntime\Source\OnnxRuntime\Public
xcopy /Y %frompath%\Plugins\TextureProcessing\Source\TextureProcessing\Public     %doxypath%\Plugins\TextureProcessing\Source\TextureProcessing\Public
rem xcopy /Y %frompath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture\Public %doxypath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture\Public
rem xcopy /Y %frompath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture\Public %doxypath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture\Public

del %doxypath%\Plugins\OnnxRuntime\Source\OnnxRuntime\Public\OnnxRuntime.h
del %doxypath%\Plugins\TextureProcessing\Source\TextureProcessing\Public\TextureProcessing.h
rem del %doxypath%\Plugins\WebcamFacialCapture\Source\WebcamFacialCapture\Public\WebcamFacialCapture.h
rem del %doxypath%\Plugins\WebcamMotionCapture\Source\WebcamMotionCapture\Public\WebcamMotionCapture.h

cd %doxypath%
"C:\Program Files\doxygen\bin\doxygen.exe" html\Doxyfile

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

rd /s /q  %doxypath%\Plugins
