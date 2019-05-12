program insert;
uses crt;
var n,i,j,k,x:integer;
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
     for j:=2 to n do
     begin
          for i:=1 to j do
          begin
               if t[j]<t[i] then
               begin
                    x:=t[j];

                    t[j]:=t[i];
                    t[i]:=x;
               end;
          end;
          for k:=1 to n do
          write(t[k],' ');
          writeln;
     end;
     for i:=1 to n do
     write(t[i],' ');
     readkey;
END.