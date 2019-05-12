program trie_croissante;
uses crt;
var n,i,j,min:integer;
    t:array[1..100] of integer;
BEGIN
     clrscr;
     repeat
           write('Entrer n: ');
           readln(n);
     until n>0;
     for i:=1 to n do
     begin
          write('Entrer t[',i,']: ');
          readln(t[i]);
     end;
     for i:=1 to n-1 do
     begin
          for j:=i+1 to n do
          begin
               if t[i]>t[j] then
               begin
                    min:=t[j];
                    t[j]:=t[i];
                    t[i]:=min;
               end;
          end;
     end;
     j:=0;
     for i:=1 to n do
     begin
         write(t[i],' ');
         j:=j+1;
         if j=(n div 2)+1 then
         writeln;
     end;
     readkey;
END.