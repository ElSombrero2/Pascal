program propagation;
uses crt;
var n,i,tmp,FIN,j,max,rang:integer;
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
     i:=n-1;
     while (i>0) do
     begin
          FIN:=0;

          for j:=0 to i do
          begin
               if t[j]>t[j+1] then
               begin
                    FIN:=j;
                    tmp:=t[j];
                    t[j]:=t[j+1];
                    t[j+1]:=tmp;
               end;
          end;
          i:=FIN;
     end;
     for i:=1 to n do
     write(t[i],' ');
     readkey;
END.