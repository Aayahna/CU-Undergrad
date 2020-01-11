#include "lambda1.tab.c"
#include "lex.yy.c"
#include "yyerror1.c"
int answer;

int main()
{
	if(yyparse() == 0)
	{
		printf("\nParse for syntactically correct lambda-calculus expression was successful:\n");
		if(answer == 1)
			printf("\n\tThe overall expression is a variable\n\n");
		else if(answer == 2)
			printf("\n\tThe overall expression is a constant\n\n");
		else if(answer == 3)
			printf("\n\tThe overall expression is a combination\n\n");
		else if(answer == 4)
			printf("\n\tThe overall expression is an abstraction\n\n");
	}
	else
		printf("\nSorry, Charlie: Not everybody can be a lambda expression!\n\n");
	
	return(1);
}
