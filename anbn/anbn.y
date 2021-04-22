/**
* created by Lucas Martinez - github: martinezlucas98
* on april 21 2021
**/

%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
int yyerror();
%}
%token A
%token B

%%
entrada : entrada cadena '\n'   { printf("Cadena valida\n"); exit(0); }
        | entrada '\n'
        | /* vacia */
        | error '\n'    { yyerror("Cadena NO valida"); yyerrok;}
        ;
cadena  : A cadena B
        | A B
        ;
%%
#include "lex.yy.c"
int main() {
printf("Ingresar cadena:\n");
yyparse();
}


/*
start -> cadena
cadena -> A cadena B | A B

{a^n b^n | n >0}

*/
