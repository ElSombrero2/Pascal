uses crt;
type t=array[1..10,1..10] of real;
var x:array[1..10,1..10] of t;
    E:t;
    i,j,n,a,b:integer;
procedure entrer;
begin
     for i:=1 to n do
     begin
          for j:=1 to n+1 do
          begin
               write('E[',i,',',j,']: ');

               readln(E[i,j]);
          end;
     end;
end;
procedure affiche;
begin
     for i:=1 to n do
     begin
          write('(E',i,'): ');
          for j:=1 to n+1 do
          begin
               write(E[i,j]:2:0,' ');
          end;
          writeln;
          writeln;
     end;
end;
{procedure egalite;
begin
     for i:=1 to n do
         for j:=i+1 to n+1 do
         begin
             x[i,j]:=E[i,j];
         end;
end;}
{procedure elimination();
begin
     repeat
           write('Choisir le pivot entrer E1 et E',n,': ');
           readln(s);
     until ((s<=n)and(s>=1));
     writeln('E',s,' est le pivot');
     for i:=1 to n-1 do


          for j:=i+1 to n do
          begin
               for a:=i to n do
               begin
                    E[j,a]:=E[j,a]-E[i,a]*(E[j,i]/E[i,i]);
               end;
          end;



end;}
BEGIN
     clrscr;
     write('Entrer n(nombre d''Çquation et nombre d''inconnue): ');
     readln(n);
     entrer;
     writeln;
     affiche;
     writeln;
     {egalite;}
     writeln('Apräs Çlimination:');
     writeln;

     {elimination;}
     for i:=1 to n-1 do
          for j:=i+1 to n do;
               for a:=i to n+1 do
                    E[j,a]:=E[j,a]-((E[j,i]/E[i,i])*E[i,a]);
     affiche;
     readkey;
END.
