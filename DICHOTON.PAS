program dicho;
uses crt;
var n,i,j,mil,min,max,x,c:integer;
    t:array[1..100] of integer;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     for i:=1 to n do
     begin
          write('t[',i,']: ');
          readln(t[i]);
     end;
     write('Entrer x: ');
     readln(x);
     j:=0;
     min:=1;
     max:=n;
     repeat
           mil:=(max+min) div 2;
           if t[mil]=x then
           begin
                j:=mil;
                break;
           end
           else
           begin
                if x<t[mil] then
                max:=mil-1;
                if x>t[mil] then
                min:=mil+1;
           end;
           c:=c+1;
     until ((t[mil]=x) or (c>(n div 2)));
     if t[mil]=x then
     write(x,' est dans le tableau … la position ',j)
     else
     write(x,' n''est pas dans le tableau');
     readkey;
END.