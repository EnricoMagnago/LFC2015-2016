%{
	int charcount = 0, linecount = 0, wordcount = 0;
%}
letter [^ \t\n]

%%

{letter}+ {wordcount++; charcount+=yyleng;}
. charcount++;
\n {linecount++; charcount++;}

%%

int main(){
	yylex(); //invoca il parser che esegue il codice di prima sullo stream in input.
	printf("There were %d characters n %d lines\n", charcount, linecount); //finito il parsing stampa i valori delle variabili
	printf("There were a total of %d words\n", wordcount);
	return 0;
}
