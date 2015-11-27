%{
	int inString = 0;
	int stringNumber = 0;
%}
%%

\" {inString = !inString; if(!inString) stringNumber++;}
\\\"
.
\n

%%

int main(){
	yylex();
	printf("number of strings: %d", stringNumber);
}
