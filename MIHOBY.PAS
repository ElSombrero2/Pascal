program datte;
uses crt;
type date=record
     jour:integer;
     mois:integer;
     annee:integer;
     end;
var d:date;

BEGIN
     clrscr;
     write('entrer la date:');
     gotoxy(16,1);
     read(d.mois);
     gotoxy(18,1);
     write('/');
     gotoxy(20,1);
     read(d.annee);
     gotoxy(24,1);
     write('/');
     gotoxy(25,1);
     read(d.jour);
     readkey;
     if


END.
