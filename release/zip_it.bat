REM Copy pack files to the current directory
copy /y ..\pack.png .
copy /y ..\pack.mcmeta .
copy /y ..\credits.txt .
REM Copy all files from ../Template/build/bin/Debug to the current directory
xcopy /s /y /q ..\assets\* .\assets\

REM Create a zip file named Tasty_Items_v.zip containing all files (except zip_it.bat) in the current directory
"C:\Program Files\7-Zip\7z.exe" a zips/Tasty_Items_v.zip * -x!zip_it.bat -x!*.zip
