%{
int lastChar = -2;
%}
%%
^[a-z] {
	if(lastChar == -2) lastChar = yytext[0];
	else{
		if(lastChar != yytext[0]) lastChar = -1;
	}
}
[. ^ a-z]
\n
%%

int main(){
	yylex();
	if(lastChar == -2) printf("il documento non contiene caratteri\n");
	else
		if(lastChar == -1) printf("i primi caratteri delle righe non sono tutti uguali\n");
		else printf("tutte le righe iniziano con: %c\n", lastChar);
}
