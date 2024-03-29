uses crt;

const n=5;
      m=3;

type tsexe=(homme,femme);

     televe=record
                  nom   :string;
                  prenom:string;
                  sexe  :tsexe;
     end;

     televes=array[1..2]of televe;

     tmatiere=record
                    nom :string;
                    prof:string;
     end;

     tmatieres=array[1..1]of tmatiere;

     classe=record
                  eff:byte;
                  nom:string[20];
                  mat:tmatieres;
                  stu:televes;
     end;

     fichier_classe=file of classe;

var f1,f2:fichier_classe;
    class:classe;
    s:string;
    i:integer;

procedure creer;
begin
     rewrite(f1);
     close(f1);
end;

procedure eleve;
begin
     writeln('La classe ',class.nom,' a ',n,' �l�ves');
     writeln('Entrer les informations concernant ces �l�ves:');
     for i:=1 to 2 do
     begin
          writeln('El�ve n�',i,':');
          repeat
                write('-Nom: '); readln(class.stu[i].nom);
                write('-Pr�nom: '); readln(class.stu[i].prenom);
                write('-Sexe(homme/femme): '); readln(s);
          until (
                        (class.stu[i].nom<>'') and
                        (class.stu[i].prenom<>'') and
                        (s='homme') or (s='femme')
                );
          if s='homme' then class.stu[i].sexe:=homme
          else if s='femme' then class.stu[i].sexe:=femme;
     end;
end;

procedure matiere;
begin
     writeln('La classe ',class.nom,' a ',m,' mati�re');
     writeln('Entrer les informations concernant ces mati�res:');
     for i:=1 to 1 do
     begin
          writeln('Mati�re n�',i,':');
          write('-Nom: ');readln(class.mat[i].nom);
          write('-Professeur: ');readln(class.mat[i].prof);
     end;
end;

procedure saisir;
begin
     reset(f1);
               seek(f1,filesize(f1));
               repeat
                     write('Entrer nom de la classe: '); readln(class.nom);
               until class.nom<>'';
               eleve;
               matiere;
               write(f1,class);
     close(f1);
end;

procedure afficher_1;
begin
     reset(f1);
               while not eof (f1) do
               begin
                    read(f1,class);
                    writeln('Nom de la classe: ',class.nom);
                    writeln('Effectif de la classe: ',n);
                    for i:=1 to 2 do
                    begin
                         writeln('El�ve n�',i,':');
                         writeln('-Nom: ',class.stu[i].nom);
                         writeln('-Pr�nom: ',class.stu[i].prenom);
                         if class.stu[i].sexe=homme then s:='homme'
                         else if class.stu[i].sexe=femme then s:='femme';
                         writeln('-Sexe: ',s);
                    end;
                    writeln('Mati�res:');
                    for i:=1 to 1 do
                    begin
                         writeln('-Nom: ',class.mat[i].nom);
                         writeln('-Professeur: ',class.mat[i].prof);
                    end;
               end;
     close(f1);
end;

procedure copier;
begin
     reset(f1);
               while not eof (f1) do
               begin
                    read(f1,class);
                    write(f2,class);
               end;
     close(f1);
end;

procedure afficher_2;
begin
     reset(f2);
               while not eof (f2) do
               begin
                    read(f2,class);
                    writeln('Nom de la classe: ',class.nom);
                    writeln('Effectif de la classe: ',n);
                    for i:=1 to 2 do
                    begin
                         writeln('El�ve n�',i,':');
                         writeln('-Nom: ',class.stu[i].nom);
                         writeln('-Pr�nom: ',class.stu[i].prenom);
                         if class.stu[i].sexe=homme then s:='homme'
                         else if class.stu[i].sexe=femme then s:='femme';
                         writeln('-Sexe: ',s);
                    end;
                    writeln('Mati�res:');
                    for i:=1 to 1 do
                    begin
                         writeln('-Nom: ',class.mat[i].nom);
                         writeln('-Professeur: ',class.mat[i].prof);
                    end;
               end;
     close(f2);
end;

BEGIN
     clrscr;
     assign(f1,'classe.dat');
     creer;
     saisir;
     clrscr;
     afficher_1;
     assign(f2,'classe.dat');
     afficher_2;
     readkey;
END.