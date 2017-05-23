##############################################################################
# Find somewhere here: https://trac.ffmpeg.org/wiki/CompilationGuide

./configure --enable-asm --enable-yasm --arch=i386 --disable-ffserver --disable-avdevice --disable-doc --disable-ffplay --disable-ffprobe --disable-ffmpeg --enable-shared --disable-static --disable-bzlib --disable-libopenjpeg --disable-iconv --disable-zlib --prefix=/c/ffmpeg --toolchain=msvc

# I need
# --enable-libfreetype   
 
##############################################################################
# Adapted to me
# (libopenjpeg, iconv, zlib stay as in example)

./configure --enable-asm --enable-yasm --arch=x86 --enable-libfreetype \
--enable-shared --disable-static --disable-bzlib \
--disable-libopenjpeg --disable-iconv --disable-zlib --prefix=/c/ffmpeg --toolchain=msvc --logfile=../log_ffmpeg.log \
--extra-cflags=-MD --enable-libx264 --enable-gpl


##############################################################################
# Compile x264 
# (start from here: https://trac.ffmpeg.org/wiki/CompilationGuide/MSVC#CompilingFFmpegwithexternallibraries)

# not work
# CC=cl ./configure --host=amd64-x86-msys --enable-shared --prefix=/c/ffmpeg/x264 --extra-cflags="-MD -DNO_PREFIX"

CC=cl ./configure --host=x86_64-w64-mingw32 --enable-shared --prefix=/c/ffmpeg/x264 --extra-cflags="-MD -DNO_PREFIX"