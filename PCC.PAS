uses crt;
var p:array[1..10] of integer;
    i,n,t:integer;
    s,chemin:string;
BEGIN
     clrscr;
     for i:=1 to n do
     begin
          t:=i;
          str(t,s);
          chemin:=s;
          repeat
                t:=p[t];
                str(t,s);
                chemin:=s+'-'+chemin;
          until t=1;
          writeln('PCC de 1 … ',i,':',chemin);
     end;
     readkey;
END.