/**
* created by Lucas Martinez - github: martinezlucas98
* on april 21 2021
**/

%{

%}
%%
[aA]  {return A;}
[bB]  {return B;}
\n|.  {return yytext[0];}
%%
