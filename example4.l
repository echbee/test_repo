%{
#include "y.tab.h"
%}
%%
[0-9]+	{ yylval=atoi(yytext); return ID; }

[+*] {return *yytext; }
[ \t] { ; } /* skip whitespace */
[\n] {return 0;}
%%

int yywrap(void) {
return 1;
}

