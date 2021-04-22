%{
/* Sección de Declaraciones */
#include<stdio.h>
int flag=0;
int yylex();
void yyerror();



%}

%token NUMBER

%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

/* Sección de Reglas de Tradución */
%%

ArithmeticExpression: E{printf("\nResultado=%d\n", $$);
return 0;
};
E:E'+'E {$$=$1+$3;}

|E'-'E {$$=$1-$3;}

|E'*'E {$$=$1*$3;}

|E'/'E {$$=$1/$3;}

|E'%'E {$$=$1%$3;}

|'('E')' {$$=$2;}

| NUMBER {$$=$1;}

;

%%

// Código de Ayuda / Auxiliar
void main()
{
printf("\nIngrese cualquier expresión aritmética incluyendo las operaciones: Adición, Substracción, Multiplicación, División, Módulo y Paréntesiss\n");

yyparse();
if(flag==0)
printf("\nLa expresión aritmética ingresada es válida!\n\n");
}

void yyerror()
{
printf("\nLa expresión aritmética ingresada no es válida!\n\n");
flag=1;
}
