program minimum;
uses crt;
var i,n,j,min,rang,tmp:integer;
    t:array[1..10] of integer;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     for i:=1 to n do
     begin
          write('t[',i,']: ');
          readln(t[i]);
     end;
     for i:=1 to n-1 do
     begin
          min:=t[i];
          rang:=i;
          for j:=i+1 to n do
          begin
               if t[j]<min then
               begin
                    min:=t[j];
                    rang:=j;
               end;

          end;
          tmp:=t[i];
          t[i]:=t[rang];
          t[rang]:=tmp;
          write(t[i],' ');
          writeln;
     end;
     for i:=1 to n do
     write(t[i],' ');
     readkey;
END.