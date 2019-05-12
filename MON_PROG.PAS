program mon_programme;
uses crt;
var a,b,c,min:real;
    lettre:char;
    name,r:string;
BEGIN
     clrscr;
     writeln('Bonjour!');
     writeln('Avant tout, pr‚sentez vous.');
     writeln('Vous ˆtes...',name);
     readln(name);
     if(name='')then
     writeln('ATTENTION,INCONNUE.FERMETURE IMMEDIATE DU PROGRAMME!!!')
     else
         begin

         writeln('Ok ',name,'!');
         writeln('Nous allons commencer … travailler!');

         begin
              writeln('Test nø1:Le plus petit des 3 nombres donn‚es');
              writeln('Donnez un nombre');
              readln(a);
              writeln('Donnez un autre nombre');
              readln(b);
              writeln('Puis un dernier nombre');
              readln(c);
              if((a<b)and(a<c))then
              min:=a
              else
              begin
                   if((b<a)and(b<c))then
                   min:=b
                   else
                   min:=c;
              end;
              writeln('Le plus petit des 3 nombres donn‚es est ',min:0:0);
         end;

         writeln('Voulez-vous terminer le test?');
         writeln('Y/N');
         readln(r);

         if(r='yes')then
         writeln('Merci! Au revoir!')
         else

         begin
              writeln('Alors, passons au test suivant!');
              writeln('Test nø2:Le signe du nombre donn‚e');
              writeln('Donnez un nombre!');
              readln(a);
              if(a=0)then
              writeln(a,' est nul')
              else
                  begin
                  if(a<0)then
                  writeln(a,' est n‚gatif')
                  else
                  writeln(a,' est positif')
                  end;
         end;

         writeln('Voulez-vous terminer le test?');
         writeln('Y/N');
         readln(r);

         if(r='yes')then
         writeln('Merci, au revoir!')
         else

         begin
              writeln('Passons au dernier test si vous voulez bien!');
              writeln('Test nø3:Voyelle ou consonne');
              writeln('Donnez une lettre!');
              readln(lettre);
              if((lettre='a')or(lettre='e')or(lettre='y')or(lettre='u')or(lettre='i')or(lettre='o'))then
              writeln(lettre,' est une voyelle!')
              else
              writeln(lettre,' est une consonne');
         end;

     end;
     writeln('Nous avons finis.');
     writeln('Merci d avoir ‚t‚ avec nous jusqu … la fini du programme ',name);
     writeln('Nous vous souhaitons une agr‚able continuation');
     writeln('A bient“t! Je l espŠre.');
     writeln('Fermeture du programme');
     readkey;
END.