program trie;
uses crt;
var i,n,j,l,k,tmp:integer;
    t:array[1..10] of integer;
BEGIN
     clrscr;
     repeat
           write('Entrer n: ');
           readln(n);
     until n>0;
     for i:=1 to n do
     begin
          write('Entrer t[',i,']= ');
          readln(t[i]);
     end;
     for i:=1 to n-1 do
     begin
          for j:=i+1 to n do
          begin
               k:=1;
               l:=0;
               if t[i]>t[j] then
               begin
                    tmp:=t[j-l];
                    repeat
                          t[j-l]:=t[j-k];
                          l:=l+1;
                          k:=k+1;
                    until ((k>j) and (l>j));
t[j-k]:=tmp;
               end;
          end;
     end;
     for i:=1 to n do
     write(t[i],' ');
     readkey;
END.