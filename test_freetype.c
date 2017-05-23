#include <ft2build.h>
#include FT_FREETYPE_H
long check_func(void) { return (long) FT_Init_FreeType; }
int main(void) { printf("Hello World! Seems freetype2 works."); return 0; }