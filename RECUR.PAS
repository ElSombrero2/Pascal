uses crt;
var ans,n,i,p:integer;
    t:string;
function f(n:integer):integer;
begin
     if n=0 then
     f:=1
     else
     f:=n*f(n-1);
end;
function c(n,p:integer):integer;
begin
     if p=1 then
     c:=n
     else
         if ((p=0)or(p=n)) then
         c:=1
         else
         c:=c(n-1,p-1)+c(n-1,p);
end;
function a(n,p:integer):integer;
begin
     if (p=1) then
     a:=n
     else
         if p=0 then
         a:=1
         else
             a:=a(n,p-1)+a(n,);
end;
BEGIN
     clrscr;
     repeat
           writeln('1-Calcul factorielle');
           writeln('2-Calcul de combinaison');
           writeln('3-Calcul d''arrangement');
           writeln('4-Quitter');
           repeat
                 write('Entrer le choix entre 1 et 4:');
                 readln(ans);
           until ((ans=1)or(ans=2)or(ans=3)or(ans=4));
           case ans of

                1:
                begin
                     writeln('Calcul factorielle');
                     write('Entrer n: ');
                     readln(n);
                     f(n);
                     writeln(n,'!= ',f(n));
                end;

                2:
                begin
                     writeln('Calcul de combinaison');
                     write('Entrer n: ');
                     readln(n);
                     repeat
                           write('Entrer p: ');
                           readln(p);
                     until p<=n;
                     c(n,p);
                     writeln(n,'C',p,'= ',c(n,p));
                end;

                3:
                begin
                     writeln('Calcul d''arrangement');
                     write('Entrer n: ');
                     readln(n);
                     repeat
                           write('Entrer p: ');
                           readln(p);
                     until p<=n;
                     a(n,p);
                     writeln(n,'A',p,'= ',a(n,p));
                end;

                4:break;
           end;
           repeat
                 writeln('Vouloir continuer?(Y/N):');
                 readln(t);
           until ((t='YES') or(t='NO'));
     until (t='NO');
     readkey;
END.