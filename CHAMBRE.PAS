program chambre;
uses crt;
var x,r,c:integer;
    g,d,a,b,m,e,f,h,i,j,k,l,ans:string;
BEGIN
     clrscr;
     writeln('Etage de 0 � 9');
     writeln('Chambre de 0 � 999');
     repeat
     write('Entrer le num�ro de la chambre: ');
     readln(x);
     until ((x>=0) and (x<=999));
     r:=x mod 2;
     if r=1 then g:=' � droite'
     else g:=' � gauche';
     c:=x div 100;
     case c of
          0:ans:=' rez de chauss�e';
          1:ans:=' 1�re �tage';
          2:ans:=' 2�me �tage';
          3:ans:=' 3�me �tage';
          4:ans:=' 4�me �tage';
          5:ans:=' 5�me �tage';
          6:ans:=' 6�me �tage';
          7:ans:=' 7�me �tage';
          8:ans:=' 9�me �tage';
          9:ans:=' 9�me �tage';
     end;
     write('La personne se trouve au ',ans,g);
     readkey;
END.