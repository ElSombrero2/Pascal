program chambre;
uses crt;
var x,r,c:integer;
    g,d,a,b,m,e,f,h,i,j,k,l,ans:string;
BEGIN
     clrscr;
     writeln('Etage de 0 … 9');
     writeln('Chambre de 0 … 999');
     repeat
     write('Entrer le num‚ro de la chambre: ');
     readln(x);
     until ((x>=0) and (x<=999));
     r:=x mod 2;
     if r=1 then g:=' … droite'
     else g:=' … gauche';
     c:=x div 100;
     case c of
          0:ans:=' rez de chauss‚e';
          1:ans:=' 1Šre ‚tage';
          2:ans:=' 2Šme ‚tage';
          3:ans:=' 3Šme ‚tage';
          4:ans:=' 4Šme ‚tage';
          5:ans:=' 5Šme ‚tage';
          6:ans:=' 6Šme ‚tage';
          7:ans:=' 7Šme ‚tage';
          8:ans:=' 9Šme ‚tage';
          9:ans:=' 9Šme ‚tage';
     end;
     write('La personne se trouve au ',ans,g);
     readkey;
END.