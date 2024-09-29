%{
#include <stdio.h>
#include <string.h>

int valid_ssn_count = 0;
FILE *output_file;
%}

%option noyywrap

%%

^[0-9]{3}-[0-9]{2}-[0-9]{4}$ {
    fprintf(output_file, "Valid SSN: %s\n", yytext);
    valid_ssn_count++;
}

^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ {
    fprintf(output_file, "Valid Email: %s\n", yytext);
}

^[A-Z]([a-z]+)([0-9]+)[!@#$%^&*()_+\-=\[\]{};\":\"\\|,.<>\/?]+.{2,}$ {
    fprintf(output_file, "Valid Password: NOHACKER\n");
}

.|\n { /* Ignore other characters */ }

%%

int main() {
    FILE *input_file = fopen("input.txt", "r");
    if (!input_file) {
        perror("Error opening input file");
        return 1;
    }
    
    output_file = fopen("output.txt", "w");
    if (!output_file) {
        perror("Error opening output file");
        fclose(input_file);
        return 1;
    }
    
    yyin = input_file;
    yylex();
    
    fprintf(output_file, "\nNumber of valid SSNs: %d\n", valid_ssn_count);
    
    fclose(input_file);
    fclose(output_file);
    return 0;
}
