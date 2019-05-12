program decal;
uses crt;
var n,i,j,x,k,d:integer;
    t:array[1..100] of integer;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     for i:=1 to n do
     begin
          write('t[',i,']: ');
          readln(t[i]);
     end;
     write('Entrer le nombre de d‚calage: ');
     readln(x);
     for d:=1 to x do
     begin
           k:=t[n];
           for j:=n downto 1 do
           t[j]:=t[j-1];
           t[j]:=k;
     end;
     for i:=1 to n do
     write(t[i],' ');
     readkey;
END.