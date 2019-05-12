program t1_t2;
uses crt;
var i,n,j,k,l,a,b:integer;
    t,t1,t2:array[1..10] of real;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     for i:=1 to n do
     begin
          write('t[',i,']= ');
          readln(t[i]);
     end;
     a:=0;
     b:=0;
     j:=0;
     l:=0;
     for i:=1 to n do
     begin
          if t[i]>0 then
          begin
               a:=a+1;
               j:=j+1;
               t1[j]:=t[i];
          end;
     end;
     for i:=1 to n do
     begin
          if t[i]<0 then
          begin
               b:=b+1;
               l:=l+1;
               t2[l]:=t[i];
          end;
     end;
     writeln('t1:');
     for j:=1 to a do
     write(t1[j]:0:0,' ');
     writeln;
     writeln('t2:');
     for l:=1 to b do
     write(t2[l]:0:0,' ');
     readkey;
END.