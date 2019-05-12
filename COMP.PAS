program comp;
uses crt;
var i,n:real;
BEGIN
     clrscr;
     write('Donnez un nombre i: ');
     readln(i);
     write('Donnez un nombre n: ');
     readln(n);
     if n=i then
     write(n:4:4,' est ‚gal … ',i:4:4)
     else
     begin
          if i<n then
          write(n:4:4,' est plus grand que ',i:4:4)
          else
          write(i:4:4,' est plus grand que ',n:4:4);
     end;
     readkey;
END.