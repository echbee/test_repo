%{
#include "y.tab.h"
extern int yylval;
%}

%%
[0-9]+	{ yylval = atoi (yytext); 
	return NUMBER; }
[ \t]	{ }
\n	{
	return 0;
	}
.	{
	return yytext[0];
	/* so yacc can see things like '+', '-', and '=' */
	}
%%

int yywrap(void) {
return 1;
}

