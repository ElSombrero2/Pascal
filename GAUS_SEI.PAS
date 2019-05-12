uses crt;
var ans:char;
    E:array[1..10,1..10]of real;
    x:array[0..10,1..10]of real;
    l,i,j,n,k,u:integer;
    s,t:real;

procedure liste;
begin
     for i:=1 to n do
         for j:=1 to n+1 do
         begin
              gotoxy(j*4,i*2);
              readln(E[i,j]);
         end;
end;

procedure seibel;
begin
     for i:=1 to n do
     begin
          for j:=1 to i-1 do
          begin
               if j=0 then x[l,j]:=0;
               s:=s+E[i,j]*x[l,j];
          end;
          for u:=i+1 to n do t:=t+E[i,u]*x[l,u];
          if E[i,i]<>0 then x[l,i]:=(s-t+E[i,n+1])/E[i,i];
     end;
end;

procedure aff;
begin
     for i:=1 to n do
     writeln('x',i,': ',x[k,i]:4:4);
end;

BEGIN
     clrscr;
     repeat
           write('Entrer le nombre d''inconnue: '); readln(n);
           write('Entrer le nombre d''iteration: ');  readln(k);
           clrscr;
           writeln('Entrer la matrice');
           liste;
           for l:=1 to n do x[0,l]:=0;
           for l:=1 to k do
           begin
                s:=0; t:=0;
                seibel;
                {for i:=1 to n do
                x[l,i]:=x[l-1,i]; }
           end;
           aff;
           repeat
                 write('Vous voulez continuer ?(yes/no): ');
                 ans:=readkey;
           until ((ans='y') or (ans='n'));
     until ans='n';
     readkey;
END.