program trapeze;
uses crt;
var n,i:integer;
    X,S,a,b,h,fo:real;
function f(x:real):real;
begin
     f:=exp(3*x)*cos(2*x);
end;
BEGIN
     clrscr;
     writeln('MÇthode de trapäze:');
     write('Entrer n: ');
     readln(n);
     write('Entrer a: ');
     readln(a);
     write('Entrer b: ');
     readln(b);
     h:=(b-a)/n;
     fo:=0;
     for i:=1 to n-1 do
     fo:=fo+f(a+i*h);
     fo:=fo*h;
     S:=(h*(f(a)+f(b)))/2+fo;
     writeln('La solution est S= ',S:4:4);
     readkey;
END.