program Second;
uses crt;
var S,n,i:integer;
BEGIN
clrscr;
     write('Donnez un nombre n=');
     readln(n);
     S:=1;
     i:=1;
     while i<=n do
     begin
     S:=S*i;
     i:=i+1;
     end;
     write('La solution de ',n,' factorielle est ',S);
readkey;
END.