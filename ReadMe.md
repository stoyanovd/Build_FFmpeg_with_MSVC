MSVC Building of FFmpeg with freetype
=====================================

Most of problems are solved here: 
[trac.ffmpeg.org](https://trac.ffmpeg.org/wiki/CompilationGuide/MSVC)

My problems started when I want to add freetype as ffmpeg dependency.
Freetype is easy built with MSVC, but there are some problems to correctly 
import it in ffmpeg build.

My way
------

- Install some stuff with chocolately.

   ```
   cinst msys2
   cinst yasm
   ```

- Copy yasm to some VC discoverable folder (e.g. `VC/bin`)

- Start msys as in `run_env__example__.sh` file (after vcvars.bat)

- Check `which cl`, `which link`

- Perhaps you need to set up proxy for msys2 as for Linux.

- `pacman -S make gcc diffutils`

I needed to add -MD to CFlags and pass freetype.lib to CFlags in pkgconfig.

freetype
--------

I don't remember a lot of problems.
Seems, there was usable script `CMakeGNUtoMS_lib.bat` somewhere in freetype repo.

Currently, freetype can be included to ffmpeg only via pkgconfig.
Unlike x264, which can be added through pkgconfig and can be added without it.
So, you need freetype.pc file (as in `comments_freetype2.pc`)

x264
----
Some additions for compiling x264 are in `configure_to_msvc__example__.sh`.

Other
-----

If you have some problems with endings of lines (maybe sth is cut), check git.autocrlf.  
[As in trac.ffmpeg.org](https://trac.ffmpeg.org/wiki/CompilationGuide/MSVC)