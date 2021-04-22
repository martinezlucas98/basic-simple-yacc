# basic-simple-yacc

lex miLex.l <br />
yacc miYacc.y <br />
cc y.tab.c -ly -ll <br />


### or:

lex miLex.l <br />
yacc miYacc.y <br />
cc lex.yy.c y.tab.c -ly -ll <br />
