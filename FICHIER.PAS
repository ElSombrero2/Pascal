program fichier;
uses crt;
type personne=record
                    nom:string[30];
                    tel:string[10];
     end;
     personnes=array[1..10] of personne;
var i,n,ctr:integer;
    name,t:string;
    p:personnes;
    f:file of personne;
BEGIN
     clrscr;
     write('Entrer le nombre de personne n: ');
     readln(n);
     assign(f,'personne.dat');
     rewrite(f);
     close(f);
     for i:=0 to n-1 do
     begin
          reset(f);
          writeln('Personne ',i,':');
          repeat
                write('Nom: '); readln(p[i].nom);
                write('Tel: '); readln(p[i].tel);
                write(f,p[i]);
          until((p[i].nom <> '')and(p[i].tel<>''));
          close(f);
     end;
     clrscr;
     reset(f);
     while not eof(f) do
     read(f,p[i]);
     for i:=0 to n-1 do
     begin
            writeln('Personne ',i,':');
            writeln('Nom:',p[i].nom);
            writeln('tel:',p[i].tel);
     end;
     close(f);
     writeln;
     writeln('Recherche de personne:');
     write('Nom: '); readln(name);
     write('T‚l: '); readln(t);
     ctr:=0;
     for i:=0 to n do
     begin
          reset(f);
          if ((p[i].nom = name)and(p[i].tel=t)) then
          begin
               ctr:=1;
               break;
          end;
          close(f);
     end;
     if ctr=1 then writeln(name,' est dans la liste')
     else writeln(name,' n''est pas dans la liste');
     readkey;
END.