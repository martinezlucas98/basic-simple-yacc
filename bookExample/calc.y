%{
#include <ctype.h>
#include <stdio.h>
#define YYSTYPE double
int yylex();
int yyerror();
%}
%token NUMERO
%left '+' '-'
%left '*' '/'
%right MENOSU
%%
lineas  : lineas expr '\n'    { printf("%g\n", $2); }
        | lineas '\n'
        | /* vacia */
        | error '\n'          { yyerror("reintroduzca la ultima linea:"); yyerrok; }
        ;
expr    : expr '+' expr       { $$ = $1 + $3; }
        | expr '-' expr       { $$ = $1 - $3; }
        | expr '*' expr       { $$ = $1 * $3; }
        | expr '/' expr       { $$ = $1 / $3; }
        | '(' expr ')'        { $$ = $2; }
        | '-' expr %prec MENOSU { $$ = -$2; }
        | NUMERO
        ;
%%
#include "lex.yy.c"
