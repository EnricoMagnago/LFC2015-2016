%START AA BB CC

%%

^a { BEGIN AA; printf("a");}
^b { BEGIN BB; printf("b");}
^c { BEGIN CC; printf("c");}

<AA>directory {printf("first");}
<BB>directory {printf("second");}
<CC>directory {printf("third");}
\n {ECHO; BEGIN 0;}

%%
