program Methode;
uses crt;
var a,b,p,p0,p1,fa,fo,TOL:real;
    ans,name:string;
    n,i,t:integer;
function f(x:real):real;
begin
     f:=sqr(x)*x+4*sqr(x)-10;
end;
function g(x:real):real;
begin
     g:=sqrt(10/(x+4));
end;
function f1(x:real):real;
begin
     f1:=3*sqr(x)+8*x;
end;
BEGIN
clrscr;
       repeat
             write('Entrez votre nom: ');
             readln(name);
       until(name<>'');
       clrscr;
       writeln('Bonjour ',name,'!');

       repeat
       writeln('R‚solution de la fonction f(x)=0 dans l''intervalle I:');

       write('   -Entrer a: ');
       readln(a);
       write('   -Entrer b: ');
       readln(b);

       writeln('On travaille sur l''intervalle I=[',a:4:4,';',b:4:4,']');
       fa:=f(a)*f(b);
       if fa>0 then
       writeln('Pas de solution')
       else
       begin
            writeln('Il y a une solution!');


                  writeln('Choisissez la m‚thode de r‚solution:');
                  writeln('    1ø)M‚thode de bissection');
                  writeln('    2ø)M‚thode de point fixe');
                  writeln('    3ø)M‚thode de Newton RAPHSON');
                  writeln('    4ø)M‚thode de la SECANTE');
                  writeln('    5ø)Quitter');
                  write('Choix nø: ');
                  readln(t);

            if t=1 then
            begin
                 clrscr;
                 writeln('1ø)M‚thode de bissection:');
                 write('Entrer n: ');
                 readln(n);
                 write('Entrer TOL: ');
                 readln(TOL);
                 i:=1;
                 while i<=n do
                 begin
                      p:=(a+b)/2;
                      if ((f(p)=0) or (abs(b-a)<TOL)) then writeln('La solution est p= ',p:4:4);
                      else
                      begin
                           fo:=f(p)*f(a);
                           i:=i+1;
                           if fo>0 then a:=p else b:=p
                      end;
                 end;
                 writeln('La solution de f(x)=0 est p= ',p:4:4);
            end;

            if t=2 then
            begin
                 clrscr;
                 writeln('2ø)M‚thode de point fixe:');
                 write('Entrer n: ');
                 readln(n);
                 write('Entrer TOL: ');
                 readln(TOL);
                 write('Entrer p0: ');
                 readln(p0);
                 i:=1;
                 while i<=n do
                 begin
                      p:=g(p0);
                      if abs(p-p0)<TOL then
                      begin
                           i:=i+1;
                      end
                      else
                      begin
                           i:=i+1;
                           p0:=P;
                      end;
                 end;
                 writeln('La solution de f(x)=0 est p= ',p:4:4);
            end;

            if t=3 then
            begin
                 clrscr;
                 writeln('3ø)M‚thode de Newton RAPHSON:');
                 write('Entrer p0: ');
                 readln(p0);
                 write('Entrer n: ');
                 readln(n);
                 write('Entrer TOL: ');
                 readln(TOL);
                 i:=1;
                 while i<=n do
                 begin
                      p:=p0-(f(p0)/f1(p0));
                      if abs(p-p0)<TOL then
                      i:=i+1
                      else
                      begin
                           i:=i+1;
                           p0:=p;
                      end;
                 end;
                 writeln('La solution de f(x)=0 est p= ',p:4:4);
            end;

            if t=4 then
            begin
                 clrscr;
                 writeln('4ø)M‚thode de la SECANTE:');
                 write('Entrer n: ');
                 readln(n);
                 write('Entrer TOL: ');
                 readln(TOL);
                 write('Entrer p0: ');
                 readln(p0);
                 write('Entrer p1: ');
                 readln(p1);
                 i:=1;
                 while i<=n do
                 begin
                      p:=p1-((f(p1)*(p1-p0))/(f(p1)-f(p0)));
                      if abs(p-p1)<TOL then
                      begin
                           i:=i+1;
                      end
                      else
                      begin
                      i:=i+1;
                      p0:=p1;
                      p1:=p;
                      end;
                 end;
                 writeln('La solution de f(x)=0 est p= ',p:4:4);
            end;

            if t=5 then
            begin
                 clrscr;
                 writeln('Quitter');

            end;
            repeat

                  writeln('Voulez-vous continuez?(YES/NO)');
                  readln(ans);
                  clrscr;
            until ((ans='YES') or (ans='NO'));
                  clrscr;
            end
            until (ans='NO');
            writeln('Fin du programme');
            writeln('Au revoir ',name);

readkey;
END.