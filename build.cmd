rd /s /q docs

cd ./doc_top/src
call runDoxugen.bat
xcopy html ..\docs /Y /I
xcopy html\search ..\docs\search /Y /I

cd ../doc_en
python -m mkdocs build

cd ../doc_ja
python -m mkdocs build

