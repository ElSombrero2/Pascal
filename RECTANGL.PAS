program rectangle;
uses crt;
var a,b,h,n,i,S,x:real;
function f(x:real):real;
begin
     f:=exp(3*x)*cos(2*x);
end;
BEGIN
clrscr;
     write('Entrer a: ');
     readln(a);
     write('Entrer b: ');
     readln(b);
     write('Entrer n: ');
     readln(n);
     h:=(b-a)/n;
     i:=0;
     S:=0;
     while i<n do
     begin
          x:=a+(i*h);
          S:=S+f(x)*h;
          i:=i+1;
     end;
     writeln('La solution est S: ',S:4:4);
readkey;
END.