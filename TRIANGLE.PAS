program triangle;
uses crt;
var n,i,r,x,a:integer;
BEGIN
clrscr;
       repeat
       write('Entrer n: ');
       readln(n);
       until n mod 2 <> 0;
       i:=1;
       r:=n div 2;
       repeat
            for x:=1 to r do
            write(' ');
            r:=r-1;
            for x:=1 to i do
            write('*');
            writeln;
            i:=i+2;
       until n<i;
readkey;
END.