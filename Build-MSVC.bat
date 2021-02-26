rmdir /S /Q Build/MSVC
rmdir /S /Q Install/MSVC
cmake -D CMAKE_INSTALL_PREFIX="./Install/MSVC" -H. -BBuild/MSVC
cmake --build ./Build/MSVC --config Release
cmake --install ./Build/MSVC --config Release

:: Copy the artifacts over
mkdir ..\\Extern\\Stb\\Libraries\\x64\\Windows\\MSVC\\
mkdir ..\\Extern\\Stb\\Include
xcopy /Y .\Install\MSVC\lib\ ..\Extern\Stb\Libraries\x64\Windows\MSVC\
copy .\stb_image\stb_image.h ..\Extern\Stb\Include\stb_image.h
copy .\stb_truetype\stb_truetype.h ..\Extern\Stb\Include\stb_truetype.h