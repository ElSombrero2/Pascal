uses crt;
var a,i,j,g,n,k,m,u,v:integer;
    q,z,l,tmp,p:real;
    x,y,t:array [0..10] of real;
    E:array[0..10,0..10] of real;
procedure saisie;
begin
     writeln('Les donn‚es de x:');
     for i:=0 to m do
     begin
          write('x',i,': '); readln(x[i]);
     end;
     writeln('Les donn‚es de y:');
     for i:=0 to m do
     begin
          write('y',i,': '); readln(y[i]);
     end;
end;
procedure mise_en_equation_de_x;
begin
     for j:=0 to n do
         begin
              for k:=0 to n do
              begin
                   z:=0; l:=0;
                   for i:=0 to m do
                   begin
                        if ((j=0) and (k=0)) then
                        l:=m
                        else
                        begin
                             q:=1;
                             for u:=1 to j+k do
                             q:=q*x[i];
                        end;
                        l:=l+q;
                        q:=1;
                        for u:=1 to j do
                        q:=q*x[i];
                        z:=z+y[i]*q;
                   end;
                   E[j,k]:=l;
              end;
              E[j,n+1]:=z;
         end;
end;
procedure elimination;
begin
     for i:=0 to n-1 do
     begin
         g:=i+1;
         if (E[i,i]=0) then
         begin
              for g:=i+1 to n do
                   if E[g,i]<>0 then break;
              for k:=i to n+1 do
              begin
                   tmp:=E[i,k];
                   E[i,k]:=E[g,k];
                   E[g,k]:=tmp;
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
          for i:=n downto 0 do
              begin
                   p:=0;
                   for j:=i+1 to n do
                       p:=p+E[i,j]*x[j];
                   if E[i,i]<>0 then
                      t[i]:=(E[i,n+1]-p)/E[i,i]
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
          for i:=0 to n do
               writeln(' - a',i,': ',t[i]:0:4);
     end;
end;

procedure affichage;
begin
     for i:=0 to n do
     begin
          for j:=0 to n+1 do
              write(E[i,j]:6:4,' ');
          writeln;
     end;
end;
BEGIN
     clrscr;
     write('Entrer m: ');
     readln(m);
     writeln('Soit m+1= ',m+1,' le nombre de donn‚e');
     repeat
           write('Entrer n degr‚(n<m): ');
           readln(n);
     until n<m;
     saisie;
     mise_en_equation_de_x;
     affichage;
     elimination;
     solution;
     aff_sol;
     readkey;
END.