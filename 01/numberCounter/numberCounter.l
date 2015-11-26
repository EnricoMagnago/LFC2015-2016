%{
	int intNumber = 0;
	int floatNumber = 0;
%}

digit[0-9]
operator ['+']
space [' ']
dot['.']
%%

{digit}{digit}* {intNumber++;};
{digit}{digit}*{dot}{digit}* {floatNumber++; intNumber++;};
.
\n

%%

int main(){ //viene usato il pattern + esaustivo.
	yylex(); //invoca il parser che esegue il codice di prima sullo stream in input.
	printf("number of integers: %d\nnumber of floats: %d\n", intNumber, floatNumber);
	return 0;
}
