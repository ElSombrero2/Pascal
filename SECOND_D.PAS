program Second_degre;
uses crt;
var n,S,i:integer;
BEGIN
     clrscr;
     write('Donnez un nombre n=');
     readln(n);
     S:=1;
     for i:=1 to n do
     S:=S*i;
     writeln('La solution de ',n,' factorielle est n!=',S);
readkey;
END.