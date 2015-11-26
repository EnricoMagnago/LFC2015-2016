%{
	
%}

letterMin[a-z]
letterMai[A-Z]

%%

{letterMin} {	
	char c = yytext[0];
	switch(c){
		case 'z' :
		case 'z'-1 :
		case 'z'-2 :
		case 'z'-3 :
			printf("%c", c + 3 + 'A' - 'z' -1);
			break;
		default:
			printf("%c", c + 3);
	}
};

{letterMai} {
		char c = yytext[0];
	switch(c){
		case 'Z' :
		case 'Z'-1 :
		case 'Z'-2 :
		case 'Z'-3 :
			printf("%c", c + 3 + 'a' - 'Z' -1);
			break;
		default:
			printf("%c", c + 3);
	}
}

%%

int main(){ //viene usato il pattern + esaustivo.
	yylex(); //invoca il parser che esegue il codice di prima sullo stream in input.
	return 0;
}
