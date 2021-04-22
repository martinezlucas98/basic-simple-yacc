/**
* created by Lucas Martinez - github: martinezlucas98
* on april 21 2021
**/

numero    [0-9]+\.?|[0-9]*\.[0-9]+
%%
[ ]        { /* salta los espacios en blanco */ }
{numero}  { sscanf(yytext, "%lf", &yylval);
            return NUMERO; }
\n|.      { return yytext[0]; }
