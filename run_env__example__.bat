# Because of ffmpeg's Makefile code, I need freetype2 through pkgconfig,
# so these hacks are unused:

# export INCLUDE="C:\ffmpeg\freetype2\include;C:\ffmpeg\freetype2\include\freetype2;"$INCLUDE
# export LIB="C:\ffmpeg\freetype2\lib;"$LIB
# export PATH="/c/Program Files (x86)/Microsoft Visual Studio 12.0/VC/BIN/":$PATH

# I started from here:
# https://trac.ffmpeg.org/wiki/CompilationGuide/MSVC
# These is needed to get appropriate cl and link

"C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin\amd64_x86\vcvarsamd64_x86.bat"
"C:\tools\msys64\msys2_shell.cmd" -msys -use-full-path
