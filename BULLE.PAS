program bulle;
uses crt;
var n,i,j,x,c:integer;
    t:array[1..100] of integer;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     for i:=1 to n do
     Begin
          write('t[',i,']: ');
          readln(t[i]);
     End;
           for j:=2 to n do
           begin
                for i:=1 to j do
                begin
                     if t[i]>t[j] then
                     begin
                          x:=t[j];
                          t[j]:=t[i];
                          t[i]:=x;
                     end;
                end;
                for c:=1 to n do
                write(t[c],' ');
                writeln;
           end;
     for i:=1 to n do
     write(t[i],' ');
     readkey;
END.