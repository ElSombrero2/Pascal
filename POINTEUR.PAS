uses crt;
type pointeur=^ville;
     ville=record
                 nom:string[30];
                 population:integer;
                 next:pointeur;
     end;
var p,tete:pointeur;
    i,n,j:integer;
BEGIN
     clrscr;
     write('Entrer le nombre de ville: ');
     readln(n);
     tete:=nil;
     for i:=1 to n do
     begin
          new(p);
          write('Nom de la ville nø',i,': '); readln(p^.nom);
          write('Nombre de population: '); readln(p^.population);
          p^.next:=tete;
          tete:=p;
     end;
     i:=1;
     while p<>nil do
     begin
          writeln('Ville nø',i,':');
          writeln('Nom: ',p^.nom); writeln('Nombre de population: ',p^.population);
          i:=i+1;
          p:=p^.next;

     end;
     readkey;
END.
