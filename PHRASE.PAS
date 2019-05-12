uses crt;
type pointeur=^mot;
     mot=record
               lettre:char;
               nbr:byte;
               next:pointeur;
     end;
var phrase:string;
    p,tete:pointeur;
    i,n,j:integer;

procedure lire;
begin
     p^.nbr:=1;
     new(p);
     p^.lettre:=phrase[i];
     for j:=i to length(phrase) do
         if phrase[j]=p^.lettre then p^.nbr:=p^.nbr+1;
     p^.next:=tete;
     tete:=p;
end;

procedure aff;
begin
     while p<>nil do
     writeln(p^.lettre,'=',p^.nbr);
end;

BEGIN
     clrscr;
     writeln('Ecrire une phrase: ');
           readln(phrase);
     tete:=nil;
     for i:=1 to length(phrase) do lire;
     aff;
     readkey;
END.