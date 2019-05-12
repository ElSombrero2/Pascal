program achat;
uses crt;
var n,i,x,t,u,v,w,y,z,prix:integer;
    nom:string;
    vect:array[1..200] of integer;
BEGIN
clrscr;
       writeln('Bonjour!');
       write('Entrer le nombre de produits achet‚s: ');
       readln(n);
       prix:=0;
       for i:=1 to n do
       begin
            repeat
                  write('Nom du produit nø',i,': ');
                  readln(nom);
            until nom<>' ';
            repeat
                  write('Prix unitaire du produit "',nom,'": ');
                  readln(vect[i]);
            until vect[i]<>0;
            repeat
                  write('Entrer le nombre de ',nom,' achet‚: ');
                  readln(t);
            until t<>0;
            prix:=prix+vect[i]*t;
       end;
       repeat
             write('Entrer le montant de votre argent: ');
             readln(x);
       until x<>0;
       writeln('Prix total: ',prix);
       u:=x-prix;
       if u>=0 then
       writeln('Prix de revient: ',u)
       else
       writeln('Vous nous devez: ',abs(u));
       write('Remboursez nous maitenant!: ');
       readln(v);
       repeat
             write('Rendez le nous sale voleur!: ');
             readln(v);
       until v=abs(u);
       writeln('Merci');
readkey;
END.