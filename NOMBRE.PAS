program nbr_parfait;
uses crt;
var n,i,S,r,a,k:integer;
BEGIN
clrscr;
       repeat
             write('Entrer n: ');
             readln(n);
       until (n>0) ;
       i:=1;
       a:=2;
       k:=1;
       while a<n do
       begin
            S:=0;
            k:=1;
            while k<a do
            begin
                 r:=a mod k;
                 if r=0 then
                 begin
                      S:=S+k;
                 end;
                 k:=k+1;
            end;
       if S=a then writeln(S);
       a:=a+i;
       end;
readkey;
END.