%{
	
%}

letter[a-zA-Z]
%%

{letter} {printf("letter: %c; number: %d\n", yytext[0], yytext[0]);};
.
\n

%%

int main(){ //viene usato il pattern + esaustivo.
	yylex(); //invoca il parser che esegue il codice di prima sullo stream in input.
	return 0;
}
