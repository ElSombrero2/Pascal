uses crt;
type tdates=record
                 jour:1..31;
                 mois:1..12;
                 an:1900..2100;
     end;
var date,aff:tdates;
    mois:integer;
procedure date_to_day(var tdate:tdates);
begin
     writeln('Entrer la date d''aujourd''hui: ');
     repeat
           write('Entrer le mois: ');
           readln(tdate.mois);
           mois:=tdate.mois;
     until ((tdate.mois<=12) and (tdate.mois>=1));
     write('Entrer le jour: ');
     case mois of
          1,3,5,7,8,10,12:
                          begin
                               repeat
                                     readln(tdate.jour);
                               until ((tdate.jour<=31)and(tdate.jour>=1));
                          end;
          4,6,9,11:
                   begin
                        repeat
                              readln(tdate.jour);
                        until ((tdate.jour<=30)and(tdate.jour>=1));
                   end;
          2:
            begin
                 repeat
                       readln(tdate.jour);
                 until ((tdate.jour<=29)and(tdate.jour>=1));
            end;
     end;
     write('Entrer an: ');
     repeat
           readln(tdate.an);
     until ((tdate.an<=2100)and(tdate.an>=1900));
end;
procedure affichage;
begin
     write(date.jour,'/',date.mois,'/',date.an);
end;
{procedure tomorrow;
begin
     if ((date.mois=2)and(date.jour=29)) then
     begin
          date.jour:=1;
          date.mois:=3;
     end
     else if ((date.mois=12)and(date.jour=31)) then
          begin
               date.jour:=1;
               date.mois:=1;
               date.an:=date.an+1;
          end
          else
          begin
               mois:=date.mois;
               case mois of
                    4,6,9,11:
                             begin
                                  if date.jour=30 then
                                  begin
                                       date.jour:=1;
                                       date.mois:=date.mois+1;
                                  end
                                  else date.jour:=date.jour+1;
                             end;
                    1,3,5,7,8,10,12:
                                    begin
                                         if date.jour=31 then
                                         begin
                                              date.jour:=date.jour+1;
                                              date.mois:=date.mois+1;
                                         end
                                         else date.jour:=date.jour+1;
                                    end;
               end;
          end;
end;} {
procedure signe;
begin
     case mois of

     end;
end; }
BEGIN
     clrscr;
     date_to_day(date);
     write('La date d''aujourd''hui: ');
     affichage;
     writeln;
     {tomorrow;
     write('La date de demain: ');
     affichage;}
     readkey;
END.