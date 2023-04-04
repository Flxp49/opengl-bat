# Setup OpenGL for VSC + Bat Script

### Prerequisites 
- Install MinGW, follow this guide until Step 6 of the Prerequisites Section [https://code.visualstudio.com/docs/cpp/config-mingw](https://code.visualstudio.com/docs/cpp/config-mingw)
- Download the [freeglut package](https://www.transmissionzero.co.uk/computing/using-glut-with-mingw/) and store it a common folder accessible ny all like: "C:\Program Files\Common Files\freeglut"
- Copy the contents of "freeglut\include\GL" to the MinGW folder: "C:\msys64\mingw64\include\GL"
- Copy the contents of "freeglut\lib\x64" to the MinGW folder: "C:\msys64\mingw64\lib"
- Copy the DLL (freeglut.dll) to the same folder as your application, or to a system-wide folder which appears in your %PATH% environment variable. On a 32 bit Windows system this is typically “C:\Windows\System32\”, and on a 64 bit Windows system this is typically “C:\Windows\SysWOW64\"

### Script
###### The bat script compiles and runs freeglut app 
- Place the script in the same folder as your file
- Replace 'main' with your filename along with the applicable extension (.cpp | .c)
- Run the script
