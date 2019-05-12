uses crt;
type pointeur=^joueur;
     joueur=record
                  nom:string[20];
                  age:byte;
                  next:pointeur;
     end;
var i,n:integer;
    p,tete:pointeur;

procedure liste;
begin
     write('Joueur nø',i);
     writeln;
     write('   Nom: ');
     read(p^.nom);
     write('   Age: ');
     read(p^.age);
     i:=i+1;
     n:=i;
     writeln;
     p^.next:=tete;

     tete:=p;
end;

procedure aff(n:integer);
begin
      while p<>nil do
      begin
           writeln('Joueur nø',i,':');
           write('   Nom: ',p^.nom); writeln('   Age: ',p^.age);
           i:=i+1;
      end;
end;

BEGIN
     clrscr;
     writeln('D‚but de l''enregistrement des joueurs:');
     i:=1;
     tete:=nil;
     repeat
           new(p);
           liste;
           if p^.nom='' then
           begin
                dispose(p);
                break;
           end;
     until p^.nom='';
     aff(n);
     readkey;
END.