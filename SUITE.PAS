program figo_suite;
uses crt;
var n,u,i,u1:integer;
BEGIN
clrscr;
       repeat
       write('Entrer n:');
       readln(n);
       until n>0;
       u1:=1;
       u:=0;
       i:=1;
       while i<n do
       begin
            u:=u+u1;
            i:=i+1;
       end;
       writeln(u);
readkey;
END.