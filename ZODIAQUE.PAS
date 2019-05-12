uses crt;
type date=record
                mois:(janvier,fevrier,mars,avril,mai,juin,juillet,aout,septembre,octobre,novembre,decembre);
                jour:1..31;
     end;
var m,s:string;
    d:date;

BEGIN
     clrscr;
     write('Entrer jour de naissance: '); readln(d.jour);
     write('Entrer mois de naissance: '); readln(m);
     if m='janvier' then
     case d.jour of
          1..19: s:='capricorne';
          20..31: s:='verseau';
     end
     else if m='fevrier' then
          case d.jour of
               1..19: s:='verseau';
               20..28: s:='poisson';
               29..31: s:='erreur de jour';
          end
          else if m='mars' then
               case d.jour of
                    1..20: s:='poisson';
                    21..31: s:='b‚lier';
               end
               else if m='avril' then
                    case d.jour of
                         1..19: s:='b‚lier';
                         20..30: s:='taureau';
                         31: s:='erreur de jour'
                    end
                    else if m='mai' then
                         case d.jour of
                              1..20: s:='taureau';
                              21..31: s:='g‚meau';
                         end
                         else if m='juin' then
                              case d.jour of
                                   1..20: s:='g‚meau';
                                   21..30: s:='cancer';
                                   31: s:='erreur de jour';
                              end
                              else if m='juillet' then
                                   case d.jour of
                                        1..21: s:='cancer';
                                        22..31: s:='lion';
                                   end
                                   else if m='aout' then
                                        case d.jour of
                                             1..22: s:='lion';
                                             23..31: s:='vierge';
                                        end
                                        else if m='septembre' then
                                             case d.jour of
                                                  1..22: s:='vierge';
                                                  23..30: s:='balance';
                                                  31: s:='erreur de jour';
                                             end
                                             else if m='octobre' then
                                                  case d.jour of
                                                       1..22: s:='balance';
                                                       23..31: s:='scorpion';
                                                  end
                                                  else if m='novembre' then
                                                       case d.jour of
                                                            1..21: s:='scorpion';
                                                            22..30: s:='sagittaire';
                                                            31: s:='erreur de jour';
                                                       end
                                                       else if m='decembre' then
                                                            case d.jour of
                                                                 1..22: s:='sagittaire';
                                                                 23..31: s:='capricorne';
                                                            end
                                                            else s:='erreur de mois';
     write('Vous ˆtes n‚ sous le signe suivant: ',s);
     readkey;
END.