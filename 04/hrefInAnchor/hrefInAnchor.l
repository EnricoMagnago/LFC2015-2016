%start ANCHOR HREF

%%

\<a				{BEGIN ANCHOR;}
<ANCHOR>href=\" BEGIN HREF;
<HREF>[^\"]*	ECHO;
<HREF>\"		BEGIN ANCHOR;
<ANCHOR>a>		BEGIN 0;
.
\n

%%
