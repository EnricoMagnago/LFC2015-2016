%{
	int tot=0;
%}
firstDigit[1-9]
digit[0-9]
%%

{firstDigit}{digit}* {tot += atoi(yytext); printf("value: %i\n", atoi(yytext));};
.
%%

int main(){
	yylex(); //invoca il parser che esegue il codice di prima sullo stream in input.
	printf("total: %d\n", tot);
	return 0;
}
