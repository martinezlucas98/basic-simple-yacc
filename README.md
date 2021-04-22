# basic-simple-yacc

lex myLex.l <br />
yacc myYacc.y <br />
cc y.tab.c -ly -ll <br />


### or:

lex myLex.l <br />
yacc myYacc.y <br />
cc lex.yy.c y.tab.c -ly -ll <br />
