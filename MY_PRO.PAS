program calcule_de_multiplication;
uses crt;
var a:integer;
    x:integer;
    p:integer;
BEGIN
     Clrscr;
     Writeln('Bonjour!');
     Writeln('On va faire la table de');
     Readln(a);
     x:=0;
     While(x<=10)do
     begin
          Writeln(a,'x',x,'=',p);
          x:=x+1;
          p:=p+a;
     end;
     readkey;
END.