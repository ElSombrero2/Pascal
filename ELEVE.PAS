uses crt;
const m=3;
      n=3;
type tsexe=(homme,femme);

     tdate=record
                 jour :1..31;
                 mois :1..12;
                 annee:1900..2100;
     end;

     televe=record
                  nom   :string;
                  prenom:string;
                  ddn   :tdate;
                  sexe  :tsexe;
                  note  :0..20;
     end;

     televes=array[1..n]of televe;

     tmatiere=record
                    nom :string;
                    coef:byte;
                    prof:string;

     end;


     tsexes=array[1..2] of tsexe;

     tclasse=record
                   nom:string;
                   eff:byte;
     end;
     {note=record
                val:real;
     end;

     tnote=array[1..n] of note;
     }
     tmatieres=array[1..m] of tmatiere;
     tdates=array[1..n] of tdate;

var i,j,x :integer;
    e     :televes;
    d     :tdates;
    s     :tsexes;
    sx    :string;
    c     :tclasse;
    mat,mt:tmatieres;


procedure saisir_ddn(var d:tdates);
begin
     repeat
           write('Jour: '); readln(d[i].jour);
           write('Mois: '); readln(d[i].mois);
           write('Annee: '); readln(d[i].annee);
     until(
           (d[i].jour>=1)and(d[i].jour<=31)and
           (d[i].mois<=12)and(d[i].mois>=1)and
           (d[i].annee<=2100)and(d[i].annee>=1900)
     );
end;

procedure saisir_sexe(var sexe:tsexes);
begin
     repeat
           write('Entrer sexe(homme/femme): '); readln(sx);
     until (
           (sx='homme')or(sx='femme')
     );
     if sx='homme' then sexe[i]:=homme else sexe[i]:=femme;

end;

procedure saisir_eleve(var ets:televes);
begin
     for i:=1 to n do
     begin
          writeln('ElŠve nø',i,': ');
          write('Nom: '); readln(ets[i].nom);
          write('Pr‚nom: '); readln(ets[i].prenom);
          writeln('Date de naissance: ');
          saisir_ddn(d);
          saisir_sexe(s);
     end;
end;

procedure saisir_classe(var classe:tclasse);
begin
     write('Nom de la classe: '); readln(classe.nom);
     write('Effectif: '); readln(classe.eff);
end;

procedure saisir_matiere(var matiere:tmatieres);
begin
     writeln('MatiŠres: ');
     for i:=1 to m do
     begin
          writeln('MatiŠre nø',i,': ');
          write('Nom: '); readln(matiere[i].nom);
          repeat
                write('Coefficient: '); readln(matiere[i].coef);
          until (
                (matiere[i].coef<=14)and(matiere[i].coef>=1)
          );
          write('Professeur: '); readln(matiere[i].prof);
     end;
end;

procedure aff_classe(classe:tclasse);
begin
     writeln('Classe: ',classe.nom);
     writeln('Effectif des ‚lŠves: ',classe.eff);
end;

procedure aff_matiere(matiere:tmatieres);
begin
     writeln('MatiŠres: ');
     for i:=1 to m do
          writeln('- ',matiere[i].nom,' (coef : ',matiere[i].coef,', Prof: ',matiere[i].prof,')');
end;

procedure aff_eleve(eleve:televes; date:tdates; sexe:tsexes);
begin
     writeln('Listes des ‚lŠves: ');
     for i:=1 to n do
     begin
         write('Num‚ro ',i,' : ',eleve[i].prenom);
         if sexe[i]=homme then write(' (M) N‚ ')
         else write(' (F) N‚e ');
         writeln(' le ',date[i].jour,'/',date[i].mois,'/',date[i].annee);
     end;
end;

procedure saisir_note;
begin
     for i:=1 to m do
     begin
          writeln('Entrer les notes de la matiŠre ',mat[i].nom);
          for j:=1 to n do
          begin
               write('Num‚re ',j,': ');
               readln(e[i].note);
          end;
     end;
end;

procedure aff_note;
begin

end;

BEGIN
     clrscr;
     saisir_classe(c);
     saisir_eleve(e);
     saisir_matiere(mt);
     clrscr;
     {aff_classe(c);
     aff_matiere(mt);
     aff_eleve(e,d,s);
     writeln;}
     saisir_note;
     readln;
END.