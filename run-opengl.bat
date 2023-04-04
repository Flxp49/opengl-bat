:: Changing working directory to the bat file directory
cd "%~dp0"

:: Compiling object file 
echo "Compiling"
g++ -c -o main.o main.cpp -I"C:\Program Files\Common Files\freeglut\include"   
cls

:: Linking 
echo "Linking"
g++ -o main.exe main.o -L"C:\Program Files\Common Files\freeglut\lib" -lfreeglut -lopengl32 -lglu32 
del main.o
cls

:: Execute 
echo "App Running"
main.exe
