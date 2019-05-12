program calcule;
uses crt;
var n:real;
    x:real;
    p:real;
    m:real;
BEGIN
     clrscr;
     write('Entre le nombre: ');
     read(n);
     p:=0;
     x:=0;
     while x<=10  do
     begin
     p:=x*n;
     writeln(n:0:0,'x',x:0:0,'=',p:0:0);
     x:=1+x;
     end;
     readkey;
END.