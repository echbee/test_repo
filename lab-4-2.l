%{
#include"y.tab.h"

%}
%%
[0-9] {yylval=atoi(yytext);
	return DIGIT;}
\+|\*|-|\/|\n {return (int)*yytext;}
. {yyerror();}

%%

yywrap()
{
	return 1;
}
