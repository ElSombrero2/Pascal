program numero;
uses crt;
var n,x,i:integer;
BEGIN
clrscr;
       repeat
             write('Entrer un nombre: ');
             readln(x);
       until x>0;
       clrscr;
       writeln('Maitenant, devinez ce nombre');
       i:=0;
       repeat
       write('Entrer n: ');
       readln(n);
       i:=i+1;
       if n>x then
       begin
          writeln('Le nombre est plus petit');

       end
       else
       begin
            if n<x then
            begin
               writeln('Le nombre est plus grand');

            end
            else writeln('x: ',n);

       end;
       until n=x;
       write('Le jeu est finis');
       writeln(' dans ',i,' essais');
       case i of
            1:writeln('TrŠs bien jou‚!');
            2..3:writeln('Bien jou‚');
            4..5:writeln('Tu peux mieux faire');
            6..10:writeln('Un peu d''efforts');
            10..30:writeln('Courage');
            30..100:writeln('Abondonne maintenant');
            100..1000:writeln('Pauv''con');
       end;
readkey;
END.