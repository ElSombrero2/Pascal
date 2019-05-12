program puissance;
uses crt;
var i,m,j,z:integer;
    n,x,S:real;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     write('Entrer z: ');
     readln(z);

     S:=1;
     for i:=1 to z do
     S:=S*n;
     writeln('S: ',S:4:4);
     readkey;
END.