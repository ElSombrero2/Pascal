program Simpson;
uses crt;
var n,i,m:integer;
    a,b,h,S,u,v:real;
    z:array [0..100] of real;
function f(x:real):real;
begin
     f:=exp(3*x)*cos(2*x);
end;
BEGIN
     clrscr;
     repeat
           write('Entrer n: ');
           readln(n);
     until n>0;
     write('Entrer a: ');
     readln(a);
     write('Entrer b: ');
     readln(b);
     h:=(b-a)/n;
     z[0]:=a;
     z[n]:=b;
     for i:=1 to n-1 do
     z[i]:=z[0]+i*h;
     writeln;
     for i:=0 to n do
     writeln('f(x',i,')= ',f(z[i]):4:4);
     writeln;
     u:=0;
     m:=n div 2;
     for i:=1 to m do
     u:=u+f(z[2*i-1]);
     u:=u*4;
     writeln('u= ',u:4:4);
     v:=0;
     for i:=1 to m-1 do
     v:=v+f(z[2*i]);
     v:=v*2;
     writeln('v= ',v:4:4);
     S:=(f(a)+u+v+f(b))*(h/3);
     writeln('La solution est S= ',S:4:4);
     readkey;
END.