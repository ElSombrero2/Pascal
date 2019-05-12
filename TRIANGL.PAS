program triangle2;
uses crt;
var x,n,i,r,a:integer;
BEGIN
     clrscr;
     repeat
           write('Entrer n: ');
           readln(n);
     until n mod 2 <> 0 ;
     r:=n div 2;
     i:=1;
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