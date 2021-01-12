%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define YYDEBUG 1
%}

%token IDENTIFIER
%token CONSTANT
%token MAINFUNCTION
%token INTEGER
%token CHAR
%token STRING
%token READFROMKEYBOARD
%token WRITETOKEYBOARD
%token AND
%token OR
%token LESSTHAN
%token MORETHAN
%token LESSOREQUAL
%token MOREOREQUAL
%token ISEQUAL
%token NOTEQUAL
%token RETURN
%token OPENCURLYBRACKET
%token CLOSECURLYBRACKET
%token OPENROUNDBRACKET
%token CLOSEROUNDBRACKET
%token OPENSQUAREBRACKET
%token CLOSESQUAREBRACKET
%token QUOTATION
%token COMMA
%token APOSTROPHE
%token SEMICOLON
%token SPACE
%token IF
%token ELSE
%token WHILE
%token READSIGN
%token WRITESIGN
%token PLUS
%token MINUS
%token MULTIPLICATION
%token DIVISION
%token MODULO
%token EQUALS

%start program

%%

program : INTEGER MAINFUNCTION OPENROUNDBRACKET listOfParameters CLOSEROUNDBRACKET compoundStatement 
		;

simpleType : INTEGER 
			| CHAR 
			| STRING 
			;

userDefinedType : simpleType IDENTIFIER OPENSQUAREBRACKET CONSTANT CLOSESQUAREBRACKET
				;
				

oneParameter : simpleType IDENTIFIER
				| userDefinedType
				;
			
listOfParameters : 
					|oneParameter
					| listOfParameters COMMA oneParameter
					;

compoundStatement : OPENCURLYBRACKET statementList returnStatement CLOSECURLYBRACKET
					;

returnStatement : 
					| RETURN CONSTANT SEMICOLON
					;

statementList : statement
				| statement statementList
				;

statement : simpleStatement
			| structStatement
			;
			
simpleStatement : assignemntStatement
					| IOStatement
					| declarationStatement
					;

assignemntStatement : IDENTIFIER EQUALS expression SEMICOLON					
                        | IDENTIFIER OPENSQUAREBRACKET atomicExpression CLOSESQUAREBRACKET EQUALS expression SEMICOLON
						;

IOStatement : readStatement
				| writeStatement
				;
				
readStatement : READFROMKEYBOARD readElement SEMICOLON
				;

readElement : READSIGN IDENTIFIER
				| READSIGN IDENTIFIER readElement
				| READSIGN IDENTIFIER OPENSQUAREBRACKET atomicExpression CLOSESQUAREBRACKET
				;

writeStatement : WRITETOKEYBOARD writeElement SEMICOLON

writeElement : WRITESIGN simpleExpression
				| WRITESIGN simpleExpression writeElement
				;

declarationStatement : oneParameter SEMICOLON
						| oneParameter EQUALS simpleExpression SEMICOLON
						;
						
expression : simpleExpression
				| sumExpression
				| substractExpression
				| divideExpression
				| multiplyExpression
				| moduloExpression
				;
				
simpleExpression : atomicExpression
					| IDENTIFIER OPENSQUAREBRACKET atomicExpression CLOSESQUAREBRACKET
					;

atomicExpression : IDENTIFIER
					| CONSTANT
					;

sumExpression : simpleExpression PLUS simpleExpression

substractExpression : simpleExpression MINUS simpleExpression

divideExpression : simpleExpression DIVISION simpleExpression

multiplyExpression : simpleExpression MULTIPLICATION simpleExpression

moduloExpression : simpleExpression MODULO simpleExpression

structStatement : compoundStatement 
					| ifStatement
					| whileStatement
					;
					
ifStatement : IF OPENROUNDBRACKET condition CLOSEROUNDBRACKET compoundStatement
				| IF OPENROUNDBRACKET condition CLOSEROUNDBRACKET compoundStatement ELSE compoundStatement
				;

whileStatement : WHILE OPENROUNDBRACKET condition CLOSEROUNDBRACKET compoundStatement
				;
				
condition : expression relation expression 
			| expression relation expression andOrStatement expression relation expression
			;

andOrStatement : AND
				| OR
				;

relation : LESSTHAN
			| LESSOREQUAL
			| ISEQUAL
			| NOTEQUAL
			| MOREOREQUAL
			| MORETHAN
			;


%%

int yyerror(char *s)
{
  printf("%s\n", s);
}

extern FILE *yyin;

int main(int argc, char **argv)
{

  if (argc > 1) 
    yyin = fopen(argv[1], "r");
  if ( (argc > 2) && ( !strcmp(argv[2], "-d") ) ) 
    yydebug = 1;
  if ( !yyparse() ) 
    fprintf(stderr,"\t\t Parser finished: Correct !!!\n");
}
