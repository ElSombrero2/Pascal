program floydwarshall;
uses crt;
type tMat = array [1..20,1..20] of integer;
var ma,p,l,ml : tMat;
    n,i,j,k,x,y,t: integer;
    ans: char;
    s,chemin:string;
const infini = 32000;

procedure aff_PCC;
begin
{          t:=x;
          str(t,s);
          chemin:=s;
          repeat
                t:=l[t];
                str(t,s);
                chemin:=s+'-'+chemin;
          until t=1;
          writeln('PCC de 1 … ',i,':',chemin);
}end;
procedure aff_k;
begin
     writeln('Matrice P: ');
     writeln('pour k=',k);
         for i:=1 to n do
         begin
             for j:=1 to n do
             write(p[i,j],' ');
             writeln;
         end;


end;
BEGIN
     clrscr;
{Saisie du graphe}
        {nombre de sommets}
        n := 4;
        {matrice d'adjacence}
        ma[1,1] :=0 ; ma[1,2] :=1 ; ma[1,3] :=0 ; ma[1,4] :=1 ;
        ma[2,1] :=1 ; ma[2,2] :=0 ; ma[2,3] :=1 ; ma[2,4] :=1 ;
        ma[3,1] :=1 ; ma[3,2] :=0 ; ma[3,3] :=0 ; ma[3,4] :=1 ;
        ma[4,1] :=0 ; ma[4,2] :=1 ; ma[4,3] :=1 ; ma[4,4] :=0 ;
        {matrice des poids}
        ml[1,1] :=0 ; ml[1,2] :=3 ; ml[1,3] :=0 ; ml[1,4] :=3 ;
        ml[2,1] :=2 ; ml[2,2] :=0 ; ml[2,3] :=2 ; ml[2,4] :=2 ;
        ml[3,1] :=-2; ml[3,2] :=0 ; ml[3,3] :=0 ; ml[3,4] :=1 ;
        ml[4,1] :=0 ; ml[4,2] :=4 ; ml[4,3] :=4 ; ml[4,4] :=0 ;
{Initialisation}
        writeln('Matrice L:');
        for i:=1 to n do
             for j:=1 to n do
             begin
                  if i=j then
                  begin
                  l[i,j]:=0;
                  p[i,j]:=i;
                  end
                  else if ma[i,j]=1 then
                  begin
                  l[i,j]:=ml[i,j];
                  p[i,j]:=i;
                  end
                       else
                       begin
                       l[i,j]:=infini;
                       p[i,j]:=0;
                       end;
                       end;
        for i:=1 to n do
        begin
            for j:=1 to n do
            begin
                 if l[i,j]=infini then write('inf') else
                 write(l[i,j]:2,' ');
            end;
            writeln;
        end;
        writeln('Matrice P: ');
        for i:=1 to n do
        begin
             for j:=1 to n do
                 write(p[i,j],' ');
             writeln;
        end;
{Corps de l'algorithme et affichage des matrices L et P pour chaque valeur de k}

             for k:=1 to n do
             begin
                 for i:=1 to n do
                 begin
                      if i<>k then
                      begin
                      if l[k,i]+l[i,k]<0 then break;
                      if l[i,k]<>infini then
                         for j:=1 to n do
                             if j<>i then
                             begin
                             if l[i,k]+l[k,j]<l[i,j] then
                             begin
                                  l[i,j]:=l[i,k]+l[k,j];
                                  P[i,j]:=P[k,j];
                             end;
                             end;
                      end;
                 end;

             end;

        writeln('Initialisation :');
        writeln('Matrice L :');
        for i:=1 to n do
        begin
             for j:=1 to n do
             begin
                 {if l[i,j]=infini then write('inf');
                 }write(ml[i,j]:2,' ');

             end;
             writeln;
        end;
        writeln('Matrice P: ');
        for i:=1 to n do
        begin
             for j:=1 to n do
                 write(p[i,j],' ');
             writeln;
        end;
{Saisie de 2 sommets x et y puis affichage du PCC de x vers y avec sa longueur}
        {repeat
              write('Entrer le sommet source x: '); readln(x);
              write('Entrer le sommet destination y: '); readln(y);
              aff_PCC;
              repeat
                    write('Continuer? o/n : '); readln(ans);
              until ((ans='o')or(ans='n'));
        until ans='n';}

        readkey;
END.