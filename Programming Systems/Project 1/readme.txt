Aayahna Herbert
SDE 1
ECE 3520-001
October 3, 2018



------------------------------------*Pledge*------------------------------------

		On my honor I have neither given nor received aid on this exam.

-----------------------------------*Contents*-----------------------------------

lambda.in 	
			This file contains expressions from lambda calculator that will be
			compared to the input file using restrictions done by flex. The
			input file will be turned into a C file to scan characters coming
			in and match the valid ones with tokens from the bison file that
			correspond with the predetermined expressions of the lambda 
			calculator.

lambda1.y 
			This file contains context-free grammar that will be changed into a
			C file by bison in order to parse through said grammar. It is broken
			up into three: (1) C declarations, (2) bison declarations, and (3)
			grammar rules. The grammar rules will be used as an outline for what
			the program will be looking for to tell if the strings it will be 
			parsing are to be considered a valid lambda calculator expression.
			Depending on which expression is matched with the string being
			parsed, it will set the integer variable "answer" equal to number
			that the main function will use to print the appropriate statement.
			
lambda1.c 	
			This file contains the main function that will call the yyparse()
			function to read the bison tokens, do what its been told to do, and
			finally return a value when it the parse is completed or has
			encountered. Depending on the outcome, it will print out whether the
			the parse was able to be completed and the type of expression it was
			by using the global integer variable "answer" or that it failed.
			
yyerror1.c
			This file contains the error handling function yyerror() only. It 
			will be called by the yyparse() function when it runs into an error.
			
lambda1.log
			This file contains a log of 20 test cases. 10 of the cases are 
			example parses with syntactically correct lambda expressions and the
			other 10 with incorrect syntax.
		
--------------------------------------------------------------------------------
