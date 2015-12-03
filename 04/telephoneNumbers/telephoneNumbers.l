%start TELEPHONE
%{
int telephone = 0;
int separator = 0;
char telephoneNumber[9];
%}

%%

<TELEPHONE>[0-9]+ {
		int oldSize = telephone;
		telephone += yyleng;
		int i;
		for(i=0; i< yyleng; i++){
			telephoneNumber[oldSize+i] = yytext[i];
		}
		if(telephone == 8) printf("found:%s\n", telephoneNumber);}

<TELEPHONE>"-" {
		separator++;
		if(separator>2){ 
			separator = 0;
			telephone = 0;
			BEGIN 0;
		}
	}

[0-9] {BEGIN TELEPHONE; telephone++; telephoneNumber[0] = yytext[0]; telephoneNumber[8] = '\0';}

[^0-9\-] {BEGIN 0; separator = 0; telephone = 0;}
.

%%
