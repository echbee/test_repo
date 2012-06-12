%{
#include"y.tab.h"

%}
%%
[01] {yylval=atoi(yytext);
	printf("\nDigit found");
	return DIGIT;}
&|\||!|\(|\)|\n {printf("\nOther Character Found!!");
			return (int)*yytext;}


%%

yywrap()
{
	return 1;
}
