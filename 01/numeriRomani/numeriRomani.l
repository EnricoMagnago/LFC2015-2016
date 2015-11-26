%{
	int acc = 0;
%}

one ['I']
five ['V']
ten ['X']
fifty ['L']
oneHundred ['C']
fiveHundred ['D']
oneThousand ['M']
%%

{one} {acc += 1; if(acc%5 > 3){ printf("not a valid number, can not concatenate 4 I\n"); exit(1); }}
{five} {acc += 5;}
{ten} {acc += 10;}
{fifty} {acc += 50;}
{oneHundred} {acc += 100;}
{fiveHundred} {acc += 500;}
{oneThousand} {acc += 1000;}
.
\n

%%

int main(){ //viene usato il pattern + esaustivo.
	yylex(); //invoca il parser che esegue il codice di prima sullo stream in input.
	printf("number: %d\n", acc);
	return 0;
}
