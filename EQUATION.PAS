program degre;
uses crt;
var a,b,c,x,delta,x1,x2:real;
BEGIN
     clrscr;
     write('Bonjour, on va r‚soudre la fonction ');
     writeln('axý+bx+c=f(x)');
     write('Donnez a:');
     readln(a);
     write('Donnez b:');
     readln(b);
     write('Donnez c:');
     readln(c);
     if a=0 then
        begin
        x:=-c/b;
        write('x=',x:4:4);
        end
        else
            begin
                 delta:=sqr(b)-4*a*c;
                 if delta<0 then
                 writeln('pas de solution')
                 else
                     if delta=0 then
                     begin
                     x:=-b/(2*a);
                     write('x=',x:0:0);
                     end
                     else
                     begin
                     x1:= (-b-sqrt(delta))/2*a;
                     x2:=(-b+sqrt(delta))/2*a;
                     write('x1=',x1:0:0,' x2=',x2:0:0);
                     end;
            end;

     readkey;
END.