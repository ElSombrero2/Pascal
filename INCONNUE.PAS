uses crt;
var a,b,q,r:integer;
    ans:char;
BEGIN
     clrscr;
     write('Entrer l''inconnue entre a,b,q,r: ');
     readln(ans);
     case ans of
          'r':
          begin
               write('Entrer a: ');readln(a);
               write('Entrer q: ');readln(q);
               r:=a div q;
               writeln(r);
          end;
     end;
     readkey;
END.