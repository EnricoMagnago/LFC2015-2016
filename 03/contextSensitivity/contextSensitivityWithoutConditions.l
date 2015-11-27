%{
char *s = "directory";
%}
%%
\n {s = "directory"; printf("\n");}
^a {s = "primo"; printf("a");}
^b {s = "secondo"; printf("b");}
^c {s = "terzo"; printf("c");}
directory {printf("%s", s);}

%%
