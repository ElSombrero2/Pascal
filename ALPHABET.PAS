program alpha;
uses crt;
var i:char;
    j:integer;
    t:array[1..255] of char;
BEGIN
     clrscr;
     j:=0;
     {for i:='A' to 'z' do
     begin
          write(i,' ');
                j:=j+1;
                if j=10 then
                begin
                     writeln;
                     j:=0;
                end;

     end;}
     for j:=1 to 255 do
     writeln(ASCII,' ');
     readkey;
END.