%{
#include <stdio.h>
%}

%%
[_0123456789_]+           printf("NUMBER\n");
[_a-z__A-Z_][_a-z__A-Z__0-9_]*    printf("WORD\n");
%%
