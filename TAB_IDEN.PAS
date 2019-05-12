program identit;
uses crt;
var n,i,j,k:integer;
    t1,t2:array[1..100] of integer;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     for i:=1 to n do
     begin
          write('t1[',i,']: ');
          readln(t1[i]);
     end;
     for j:=1 to n do
     begin
          write('t2[',j,']: ');
          readln(t2[j]);
     end;
     k:=0;
     for i:=1 to n do
     begin
          if t1[i]<>t2[i] then
          begin
               k:=k+1;
               break;
          end;
     end;
     if k=0 then
     write('t1 et t2 sont identiques')
     else
     write('t1 et t2 sont diff‚rents');
     readkey;
END.