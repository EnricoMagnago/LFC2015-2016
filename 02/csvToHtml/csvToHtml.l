item [^,\n]
%%
^, {printf("<tr><td></td>");}
,& {printf("<td></td></tr>");}
^{item}+ {printf("<tr><td>%s</td>", yytext);}
{item}* {printf("<td>%s</td>", yytext);}
{item}+$ {printf("<td>%s</td></tr>\n", yytext);}
[.,\n]
%%

int main(){
	printf("<table>\n");
	yylex();
	printf("</table>");
	return 0;
}
