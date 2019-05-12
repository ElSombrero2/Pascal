program lire;
uses crt;
var i,j,k,l,m,n,o,p,q,r:integer;
    a: integer;
BEGIN
     clrscr;
     repeat
     repeat
           write('Entrer un nombre entre 0 et 9: ');
           readln(a);
           if ((0>a)or(9<a)) then
              writeln('Invalide');
     until ((0<=a)and(a<=9));

     case a of
        0: begin
             writeln('z‚ro');
             i:=i+1;
           end;
        1:begin
               writeln('un');
               j:=j+1;
          end;
        2:begin
               writeln('deux');
               k:=k+1;
          end;
        3:begin
               writeln('trois');
               l:=l+1;
          end;
        4: begin
                writeln('quatre');
                m:=m+1;
           end;
        5:begin
               writeln('cinq');
               n:=n+1;
          end;
     end;
     until ((i=2) or (j=2) or (k=2) or (l=2) or (m=2) or (n=2));
     writeln('Quitter');
readkey;
END.