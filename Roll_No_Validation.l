%{
#include <stdio.h>
%}

%%

^BL\.EN\.U[1-4](CSE|EAC|ECE|AIE|MEE)(21[0-9][0-9][0-9])$ {
	printf("Valid roll number: %s\n", yytext);
}

.+ {
	printf("Invalid roll number: %s\n", yytext);
}

%%

int main() {
	yylex();
	return 0;
}

