program inser;
uses crt;
var n,i,p:integer;
    t:array[1..255] of char;
    ans:string;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     for i:=1 to n do
     begin
          write('Entrer t[',i,']: ');
          readln(t[i]);
     end;
     write('Entrer un mot: ');
     readln(ans);
     repeat
           write('Entrer sa position p dans le tableau: ');
           readln(p);
     until ((p<=n) and (p>0));

     {if p=n then}
     t[p]:=ans;
     {else
     begin
          for i:=n-1 downto p do
          t[i+1]:=t[i];
          t[p]:=ans;
     end;}
     for i:=1 to n do
     write(t[i],' ');
     readkey;
END.