program produit;
uses crt;
var n,m,p:integer;
    a,b,s,i,j,k,l:integer;
    q,t1,t2:array[1..10,1..10] of integer;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     write('Entrer m: ');
     readln(m);
     for p:=1 to n do
     begin
          case p of
               1:
                 begin
                      writeln('Tableau nø',p);
                      for i:=1 to m do
                      begin
                           for j:=1 to m do
                           begin
                                write('t[',i,',',j,']: ');
                                readln(t1[i,j]);
                           end;
                      end;
                 end;
               2:
                 begin
                      writeln('Tableau nø',p);
                      for i:=1 to m do
                      begin
                           for j:=1 to m do
                           begin
                                write('t[',i,',',j,']: ');
                                readln(t2[i,j]);
                           end;
                      end;
                 end;
          end;
     end;
     for i:=1 to m do
     begin
          for j:=1 to m do
          begin
               q[i,j]:=0;
               for k:=1 to m do
               begin
                    q[i,j]:=q[i,j]+(t1[i,k]+t2[k,i]);
               end;
          end;
          for i:=1 to n do
          begin
               for j:=1 to m do
                    write(q[i,j]:3);
                    writeln('');
          end;
     end;
     readkey;
END.