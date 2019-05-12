uses crt;
var i,n:integer;
BEGIN
     clrscr;
     write('entrer n:');readln(n);
     for i:=n downto 0 do
     begin
          delay(1000);
          clrscr;
          textcolor(i);
          gotoxy(n,i);
          write(i);
     end;
END.