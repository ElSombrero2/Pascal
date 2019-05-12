program add;
uses crt;
var a,b,S,i:integer;
BEGIN
clrscr;
       writeln('Donnez 2 nombres a et b');
       write('a=');
       readln(a);
       write('b=');
       readln(b);
       if a<b then
          begin
               repeat
               S:=S+i;
               i:=i+1;
               until (i>b);
               writeln('La somme des valeurs entre ',a,' et ',b,' est ',S);
          end;
       {else
           begin
                i:=b;
                while (i<=a) do
                S:=S+i;
                i:=i+1;
                writeln('La somme des valeurs entre ',a,' et ',b,' est ',S);
           end;}
readkey;
END.