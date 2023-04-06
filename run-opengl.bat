:: Set your file name includng the extension, example: set filename=main.cpp
set filename=filename.extension

:: Getting filename and extension
for /f "tokens=1,2 delims=." %%a in ("%filename%") do (
  set file=%%a
  set ext=%%b
)

:: Changing working directory to the bat file directory
cd "%~dp0"

:: Compiling object file 
echo "Compiling"
g++ -c -o %file%.o %file%.%ext% -I"C:\Program Files\Common Files\freeglut\include"   

:: Linking 
echo "Linking"
g++ -o %file%.exe %file%.o -L"C:\Program Files\Common Files\freeglut\lib" -lfreeglut -lopengl32 -lglu32 
del %file%.o

:: Executing the exe
echo "App Running"
%file%.exe
