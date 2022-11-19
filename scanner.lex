%{

#include "tokens.hpp"

%}

%option yylineno
%option noyywrap


digit   		([0-9])
digitnozero     ([1-9])
letter  		([a-zA-Z])
whitespace		([\t\n\r ])
operator 		(==|!=|<|>|<=|>=)
binop           (\+|-|\*|\/)
comment			(\/\/[^\r\n]*)
ascii			([\x09\x20\x21\x23-x5B\x5D-\x7E])
special         (0([0-9]+))
string          ((\\.|[^"\\\n\r])*)
%%

{whitespace}				;
void 				                        return VOID;
int					                        return INT;
byte 				                        return BYTE;
b 					                        return B;
bool 				                        return BOOL;
and 				                        return AND;
or 					                        return OR;
not 				                        return NOT;
true				                        return TRUE;
false				                        return FALSE;
return 				                        return RETURN;
if 					                        return IF;
else 				                        return ELSE;
while 				                        return WHILE;
break				                        return BREAK;
continue			                        return CONTINUE;
";"					                        return SC;
","					                        return COMMA;
"("				                            return LPAREN;
")"				                            return RPAREN;
"{"					                        return LBRACE;
"}"					                        return RBRACE;
"="					                        return ASSIGN;
{operator}			                        return RELOP;
{binop}				                        return BINOP;
{comment}			                        return COMMENT;
{letter}({letter}|{digit})* 	            return ID; 
{special}                                   return -3;
{digitnozero}{digit}*|0	                    return NUM;
\"{string}\"			                    return STRING;
\"{string}			                        return -2;
.	                                        return -1;
	
%%

