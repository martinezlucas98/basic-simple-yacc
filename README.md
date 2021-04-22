# basic-simple-yacc

lex miLex.l
yacc miYacc.y
cc y.tab.c -ly -ll


### or:

lex miLex.l
yacc miYacc.y
cc lex.yy.c y.tab.c -ly -ll
