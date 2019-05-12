uses crt;
type pointeur=^figo;
     figo=record
                nbr1:integer;
                nbr2:integer;
                nbr3:integer;
                next:pointeur;
     end;
var  n1,n2,n3:figo;
     n,i:integer;
     tete,p:pointeur;

procedure suite;
begin
     p^.nbr3:=p^.nbr1+p^.nbr2;
     writeln(i,'eme terme: ',p^.nbr3);
     p^.next:=tete;
     p^.nbr1:=p^.nbr2;
     p^.nbr2:=p^.nbr3;
     tete:=p;
end;

BEGIN
     clrscr;
     new(p);
     write('Entrer le 1er terme de la suite de figo: ');
     readln(p^.nbr1);
     write('Entrer le 2nd terme: ');
     readln(p^.nbr2);
     write('Entrer le nombrer d''iteration: ');
     readln(n);
     tete:=nil;
     for i:=1 to n do suite;
     write('Le ',n,'eme terme de la suite est: ',p^.nbr2);
     readkey;
END.