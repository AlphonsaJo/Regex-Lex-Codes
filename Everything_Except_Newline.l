%{
#include<stdio.h>

%}

%%

. {printf("everything except newline");}

\n {printf("Newline");}

%%

int main(){
	yylex();
	return 0;
}
