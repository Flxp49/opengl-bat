echo "Running"
g++ -c -o main.o main.cpp -I"C:\Program Files\Common Files\freeglut\include"   
cls
echo "Compiling Graphic"
g++ -o main.exe main.o -L"C:\Program Files\Common Files\freeglut\lib" -lfreeglut -lopengl32 -lglu32 
rm main.o
cls
echo "App Running"
main.exe
