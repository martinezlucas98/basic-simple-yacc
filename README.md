# basic-simple-yacc
<br />
<br />

### bookExample

A simple calculator as explained in the book *Compilers: Principles, Techniques, and Tools* by Alfred V. Aho. , Monica S. Lam. , Ravi Sethi. Avaya. using a LEX file.
<br />
<br />
### bookExampleNoLEX

A simple calculator as explained in the book *Compilers: Principles, Techniques, and Tools* by Alfred V. Aho. , Monica S. Lam. , Ravi Sethi. Avaya. without using a LEX file but declaring yylex() on the auxiliary functions section on the YACC file calc.y
<br />
<br />
### anbn

Recognizes the grammar for the lenguage L = {a<sup>n</sup>b<sup>n</sup> | n>0}
> Note: It is not case sensitive therefore a = A and b = B
> 
<br />
<br />
LEX and YACC basic commands

> lex myLex.l <br />
yacc myYacc.y <br />
cc y.tab.c -ly -ll <br />
>

or:

> lex myLex.l <br />
yacc myYacc.y <br />
cc lex.yy.c y.tab.c -ly -ll <br />
>
