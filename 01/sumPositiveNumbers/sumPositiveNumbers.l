%{
	int accumulator = 0;
%}
firstDigit[1-9]
digit[0-9]
operator ['+']
space [' ']
%%

{firstDigit}{digit}* {if(accumulator == 0) accumulator = atoi(yytext);};
{space}*{operator}{space}*{firstDigit}{digit}* {char* str = &yytext[1]; accumulator += atoi(str);};
.
%%

int main(){
	yylex(); //invoca il parser che esegue il codice di prima sullo stream in input.
	printf("total: %d\n", accumulator);
	return 0;
}
