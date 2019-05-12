program vecteur;
uses crt ;
TYPE
    vect=array[1..20] of integer;
var n,i:integer;
    u,v,w:vect;
BEGIN
clrscr;
       write('Entrer n: ');
       readln(n);
       for i:=1 to n do
       begin
            write('Entrer le vecteur u',i,': ');
            readln(u[i]);
            write('Entrer le vecteur v',i,': ');
            readln(v[i]);
       end;
            write('u: ');
            for i:=1 to n do
            write(u[i],' ');
            writeln;
            write('v: ');
            for i:=1 to n do
            write(v[i],' ');
       writeln;
       for i:=1 to n do
       begin
            w[i]:=u[i]+v[i];
            writeln('w',i,': ',w[i]);
       end;
readkey;
END.