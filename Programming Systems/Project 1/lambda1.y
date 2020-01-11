%{
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
int yylex (void);
int yyerror (char *s);
int answer;
%}

%token ID
%token NUM
%token FUN
%token LPARENS
%token RPARENS
%token LAMBDA
%token PERIOD

%% /* Grammar rules */

expression: variable | constant | combination | abstraction
;
variable: ID {answer = 1;}
;
constant: NUM {answer = 2;}
			| FUN {answer = 2;}
;
combination: LPARENS expression expression RPARENS {answer = 3;}
;
abstraction: LPARENS LAMBDA variable PERIOD expression RPARENS {answer = 4;}
;
%%
