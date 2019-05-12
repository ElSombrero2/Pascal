uses crt;
var n,i,j,k,l,a:integer;
    E:array[1..10,1..10]of real;
    s,p:real;
    x:array[0..10,1..10] of real;
procedure saisir;
begin
     clrscr;
     writeln('Saisir la matrice:');
     for i:=1 to n do
         for j:=1 to n+1 do
         begin
              gotoxy(j*4,i*2);
              readln(E[i,j]);
         end;
end;

procedure affiche;
begin
     writeln;
     for i:=1 to n do
     begin
          for j:=1 to n+1 do
               write(E[i,j]:4:4,' ');
          writeln;
     end;
end;

procedure jacobi;
begin
     for i:=1 to n do
     begin
          for j:=1 to n do
               if j<>i then s:=s+E[i,j]*x[l-1,j];
          if E[i,i]<>0 then
          x[l,i]:=(-1*s+E[i,n+1])/E[i,i]
          else write('Pas de solution');
     end;
end;

procedure aff;
begin
     for i:=1 to n do
     writeln('x',i,':',x[k,i]:4:4);
end;

BEGIN
     clrscr;
     write('Entrer le nombre d''iteration: '); readln(k);
     write('Entrer le nombre d''inconnue: '); readln(n);
     saisir;
     affiche;
     for l:=1 to n do
     x[0,l]:=0;
     for l:=1 to k do
     begin
         s:=0;
         jacobi;
     end;
     aff;
     readkey;
END.