uses crt;

var
    phrase,y,z:string;
    c,i,j,n:integer;
    x,a,b:char;

BEGIN
     clrscr;
     writeln('Entrer la phrase:');
     readln(phrase);
     for j:=ord('a') to ord('z') do
     begin
          n:=0;
          x:=chr(j);
          for i:=1 to length(phrase) do
          begin
               if x=phrase[i] then n:=n+1;
          end;
          if n<>0 then writeln(x,'=',n);
     end;
     write('Entrer un mot: '); readln(y);
     write('Entrer un autre mot: '); readln(z);
     for i:=1 to length(y) do
     begin
          a:=y[i];
          for j:=1 to length(z) do
          if a=z[j] then writeln('il y a ',a);
     end;
     readkey;
END.