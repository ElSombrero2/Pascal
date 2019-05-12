program pro;
uses crt;
type pointeur=^joueur;
     joueur=record
           nom:string;
           age:integer;
           next:pointeur;
     end;
var i,n,j:integer;
    p,tete,jr:pointeur;

procedure saisiejoueurs(var j:joueur);
begin

end;

BEGIN
     clrscr;
     tete:=nil;  i:=1;
     while true do
     begin
          new(p);
          writeln('joueur n',i);
          write('nom: ');readln(p^.nom);
          if p^.nom='tay'then
          begin
               dispose(p);
               break;
          end;
          write('age: ');readln(p^.age);
          writeln;
          p^.next:=tete;
          tete:=p;
          i:=i+1;
     end;
     clrscr;
     n:=i;j:=1;
     while n>1 do
     begin
          i:=1;
          while(i<n) do
          begin
               jr:=p;
               p:=p^.next;
               i:=i+1;
          end;
          p:=tete;
          writeln('joueur ',j);
          write(jr^.nom,'  ');write(jr^.age);
          writeln;
          n:=n-1;
          j:=j+1;
     end;
     readkey;
END.