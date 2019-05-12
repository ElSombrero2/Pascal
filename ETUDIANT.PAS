uses crt;
const nbMat=3;
type tsexe=(h,f);
     tdate=record
                 jour:1..31;
                 mois:1..12;
                 annee:1900..2100;
     end;
     tnote=0..20;
     tMatiereCoef=record
                        matiere:string;
                        prof:string;
                        coef:byte;
     end;
     pEtud=^tEtud;
     tEtud=record
                 num:byte;
                 nom:string;
                 sexe:tsexe;
                 dateNaiss:tdate;
                 notes:array[1..5]of tnote;
                 next:pEtud;
     end;
     pClasse=^tClasse;
     tClasse=record
                   nom:string;
                   eff:integer;
                   etud:tEtud;
                   mat:array[1..3]of tMatiereCoef;
                   next:pClasse;
     end;

var cla : tClasse;
    n,i : integer;

function check_date(j,m,a:integer):boolean;
begin
     if((a mod 4=0)and(m=2)and(j>29))then check_date:=false
     else if ((a mod 4 <> 0)and(m=2)and(j>28)) then check_date:=false
     else if ((m=4)or(m=6)or(m=9)or(m=11))and(j>30) then check_date:=false
     else check_date:=true;
end;

function creer_etuds(n:integer):pEtud;
var te,qe,e:pEtud;
    i,j:integer;
    x:char;
begin
     for i:=1 to n do
     begin
          new(e);
          writeln('Etudiant nø',i,':');
          write('Nom: '); readln(e^.nom);
          repeat
                write('Sexe(h/f): ');
                readln(x);
          until ((x='h')or(x='f'));
          if x='h' then e^.sexe:=h
          else e^.sexe:=f;
          writeln('Note par matiere:');
          for j:=1 to nbmat do
          begin
               write('Matiere nø',j,': ');
               readln(e^.notes[j]);
          end;
          e^.next:=nil;
          if te=nil then te:=e
          else qe^.next:=e;
          qe:=e;
     end;
     creer_etuds:=te;
end;

function creer_classes(var n:integer):pClasse;
var t,q,c:pClasse;
    i,j,e:integer;
begin
     write('Nombre de classe: '); readln(n);
     t:=nil; q:=nil;
     for i:=1 to n do
     begin
          new(c);
          writeln('Classe nø',i,':');
          write('Nom: '); readln(c^.nom);
          write('Effectif: '); readln(c^.eff);
          for j:=1 to nbmat do
          begin
               writeln('Matiere nø',j,':');
               write('Nom: '); readln(c^.mat[j].matiere);
               write('Professeur: '); readln(c^.mat[j].prof);
               write('Coefficient: '); readln(c^.mat[j].coef);
          end;                          {
          c^.etud:=creer_etuds(c^.eff);}
          c^.next:=nil;
          if t=nil then t:=c
          else q^.next:=c;
          q:=c;
     end;
     creer_classes:=t;
end;

procedure aff_etud(e:petud);
var tmp:petud;
    j:integer;
begin
     tmp:=e;
     while tmp<>nil do
     begin

     end;
end;
procedure aff_class(cl:pClasse);
begin
     while cl<>nil do
     begin
          writeln('Classe: ',cl^.nom);
          writeln('Effectif: ',cl^.eff);
          for i:=1 to nbmat do
          begin
               writeln('Matiere nø',i,':');
               writeln('Nom: ',cl^.mat[i].matiere);
               writeln('Professeur: ',cl^.mat[i].prof);
               writeln('Coefficient: ',cl^.mat[i].coef);
          end;                {
          aff_etud(cl^.etud);}
          cl:=cl^.next;
     end;
end;

BEGIN
     clrscr;
     readkey;
END.