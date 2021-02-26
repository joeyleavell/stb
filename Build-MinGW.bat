rmdir /S /Q Build/MinGW
rmdir /S /Q Install/MinGW
cmake -G "MinGW Makefiles" -D CMAKE_INSTALL_PREFIX="./Install/MinGW" -H. -BBuild/MinGW
cmake --build ./Build/MinGW --config Release
cmake --install ./Build/MinGW --config Release

:: Copy the artifacts over
mkdir ..\\Extern\\Stb\\Libraries\\x64\\Windows\\MinGW\\
mkdir ..\\Extern\\Stb\\Include
xcopy /Y .\Install\MinGW\lib\ ..\Extern\Stb\Libraries\x64\Windows\MinGW\
copy .\stb_image\stb_image.h ..\Extern\Stb\Include\stb_image.h
copy .\stb_truetype\stb_truetype.h ..\Extern\Stb\Include\stb_truetype.h