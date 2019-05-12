uses crt;
var x:array[1..10] of real;
    E:array[1..10,1..10] of real;
    n,i,j,a,k,l:integer;
    p,m,tmp:real;
    ans:char;
procedure entrer;
begin
     for i:=1 to n do
         for j:=1 to n+1 do
         begin
              gotoxy(j*3,i*2);
              readln(E[i,j]);
         end;
end;
procedure affiche;
begin
     for i:=1 to n do
     begin
          write('(E',i,'): ');
          for j:=1 to n+1 do
              write(E[i,j]:4:0,' ');
          writeln;
          writeln;
     end;
end;
procedure elimination;
begin
     for i:=1 to n-1 do
     begin
         l:=i+1;
         if (E[i,i]=0) then
         begin
              for l:=i+1 to n do
                   if E[l,i]<>0 then break;
              for k:=i to n+1 do
              begin
                   tmp:=E[i,k];
                   E[i,k]:=E[l,k];
                   E[l,k]:=tmp;
              end;
         end;
         for j:=i+1 to n do
             if E[i,i]<>0 then
                 for a:=n+1 downto 1 do
                      E[j,a]:=E[j,a]-E[i,a]*(E[j,i]/E[i,i])
             else writeln('Pas de solution');
     end;
end;
procedure solution;
begin
     if E[n,n]=0 then
          writeln('Pas de solution!')
     else
          for i:=n downto 1 do
              begin
                   p:=0;
                   for j:=i+1 to n do
                       p:=p+E[i,j]*x[j];
                   if E[i,i]<>0 then
                      x[i]:=(E[i,n+1]-p)/E[i,i]
                   else
                   begin
                       writeln('Pas de solution PUTIN!');
                       break;
                   end;
              end;
end;
procedure aff_sol;
begin
     if E[n,n]=0 then
          writeln('Pas de solution!')
     else
     begin
          writeln('Les solutions');
          for i:=1 to n do
               writeln(' - x',i,': ',x[i]:0:4);
     end;
end;
BEGIN
     repeat
           clrscr;
           write('Entrer n: ');
           readln(n);
           entrer;
           writeln;
           writeln;
           affiche;
           writeln;
           writeln('Apräs Çlimination:');
           writeln;
           elimination;
           affiche;
           writeln;
           solution;
           aff_sol;
           repeat
                 write('Recommencer? o/n:');
                 readln(ans);
           until ((ans='n')or(ans='o'));
     until ans='n';
     readkey;
END.