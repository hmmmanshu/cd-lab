%{
    // c code
    #include <stdio.h>
    #include <stdlib.h>
%}

%%
\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};
%%

int main(){
    extern FILE *yyin, *yyout;
    yyin = fopen("input.c", "r");
    yyout = fopen("out.c", "w");
    yylex();
    return 0;
}