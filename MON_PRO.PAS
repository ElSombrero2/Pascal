program Bissection;
uses crt;
var a,b,c,p,f1,f2,p0:real;
    n,i:integer;
function
         g(x:real):real;
begin
     g:=sqr(10/(x+4));
end;
function f(x:real):real;
begin
     f:=sqr(x)*x-x-1;
end;
BEGIN
     clrscr;
     writeln('Donnez la valeur de I=[a,b]: ');
     write('a= ');
     readln(a);
     write('b= ');
     readln(b);
     writeln('Maintenant, on travail dans l interval I=[',a:4:4,';',b:4:4,']');
     write('Donnez la valeur de n: ');
     readln(n);
     f1:=f(a)*f(b);
     if f1>0 then
     writeln('Pas de solution')
     else

              begin
                   p:=(a+b)/2;
                   p0:=p;
                   writeln('La valeur initialle de p0 est: p0 = ',p0);
                   p:=g(p0);
                   {if f(p)=0 then
                   writeln('La solution est: ',p:4:4)
                   else
                       begin
                            f2:=f(a)*f(p);
                            i:=i+1;
                            if f2>0 then a:=p else b:=p;
                       end;
                   writeln('La solution est: ',p:4:4);}
                   if g(p0)=p then
                   writeln('La solution est: ',p:4:4)
                   else
                   begin
                        i:=1;
                        while i<=n do
                        begin
                             p:=g(p0);
                             i:=i+1;
                        end;
                   end;
              end;
              writeln('La solution est: ',p:4:4);


readkey;
END.
