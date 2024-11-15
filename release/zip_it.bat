@echo off
set /p "file_version_num=Filename version number: "

REM Copy pack files to the current directory temporarily
copy /y ..\pack.png .
copy /y ..\pack.mcmeta .
copy /y ..\credits.txt .
xcopy /s /y /q ..\assets\* .\assets\

REM Create a zip file named Tasty_Items_v(version number).zip containing all files (except zip_it.bat) in the current directory
"C:\Program Files\7-Zip\7z.exe" a zips/Tasty_Items_v%file_version_num%.zip * -x!zip_it.bat -x!*.zip

REM Remove temporarily copied files
del .\pack.png
del .\pack.mcmeta
del .\credits.txt
rmdir .\assets /s /q