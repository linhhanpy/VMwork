all:
	make ico
	make toasm
	copy .\dist\toasm.exe .\
	make VMwork
VMwork:
	g++ -o VMwork main.cpp ico.res -std=c++11 -leasyx -lcomdlg32 -lshlwapi -lmsimg32 -mwindows -static-libgcc -static-libstdc++
ico:
	windres -O coff -o ico.res ico.rc
toasm:
	Pyinstaller -F toasm.py
