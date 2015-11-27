%{
	int heNumber = 0;
	int sheNumber = 0;
%}

%%

she {sheNumber++; REJECT;}
he {heNumber++;}
\n
.

%%
int main(){
	yylex();
	printf("there are %d he and %d she", heNumber, sheNumber);
	return 0;
}
