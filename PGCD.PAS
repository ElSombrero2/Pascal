program pgcd;
uses crt;
var a,b,u,l,h:integer;
BEGIN
clrscr;
       repeat
       write('Entrer a: ');
       readln(a);
       until a>0;
       repeat
       write('Entrer b: ');
       readln(b);
       until b>0;
       l:=a;
       h:=b;
       if l>h then
       begin
            repeat
            u:=l mod h;
            l:=h;
            h:=u;
            until u=0;
            u:=l-h;
       end
       else
       begin
            repeat
            u:=h mod l;
            h:=l;
            l:=u;
            until u=0;
            u:=h-l;
       end;
       writeln('PGCD (',a,';',b,'): ',u);
readkey;
END.