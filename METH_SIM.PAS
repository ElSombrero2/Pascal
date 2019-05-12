program simpson;
uses crt;
var N,i,m,r:integer;
    a,b,h,x,S,Z,G:real;
function f(x:real):real;
begin
     f:=exp(3*x)*cos(2*x);
end;
BEGIN
     clrscr;
     repeat
           write('Entrer N: ');
           readln(N);
     until N mod 2 =0;
     write('Entrer a: ');
     readln(a);
     write('Entrer b: ');
     readln(b);
     h:=(b-a)/N;
     m:=N div 2;
     Z:=0;
     for i:=1 to m do
     begin
          x:=a + h*(2*i-1);
          Z:=Z+f(x);
     end;
     G:=0;
     for i:=1 to m-1 do
     begin
          x:=a + h*(2*i);
          G:=G+f(x);
     end;
     S:=(h/3)*(f(a)+f(b)+4*Z+2*G);
     write('S= ',S:4:4);
     readkey;
END.