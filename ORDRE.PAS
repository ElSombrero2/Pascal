program ordre;
uses crt;
var i,n,a,b:integer;
    t:array[1..10] of integer;
    j,k,l,x,y:boolean;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     for i:=1 to n do
     begin
          write('t[',i,']= ');
          readln(t[i]);
     end;
     j:=false;
     k:=false;
     x:=false;
     y:=false;
     b:=0;
     for a:=1 to n do
     begin

          for i:=1 to n-1 do

               if t[i]<t[i+1] then b:=1
               else
               begin
                    for i:=1 to n-1 do
                    if t[i]>t[i+1] then b:=2
                    else b:=0;
               end;

     end;
     if b=1 then writeln('t est croissant')
     else
     begin
          if b=2 then writeln('t est d‚croissant')
          else
          if b=0 then writeln('t est sans ordre');
     end;
     readkey;
END.