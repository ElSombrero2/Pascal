program eleve;
uses crt;
var n,i,c:integer;
    note:array[1..100] of real;
    max:real;
    r:char;
procedure moi;
begin
     clrscr;
     writeln('a) Notes d''�l�ves /20');
     write('Entrer le nombre d''�l�ve: ');
     readln(n);
     for i:=1 to n do
     begin
          repeat

                write('Entrer la note /20 de l''�l�ve n�',i,': ');
                readln(note[i]);

          until ((note[i]>=0) and (note[i]<=20));
     end;
     i:=1;
     repeat

          writeln('Note de l''�l�ve n�',i,': ',note[i]:2:2,'/20');
          i:=i+1;
     until i>n;
end;
procedure toi;
begin
     clrscr;
     writeln('b)Classement des notes et des �l�ves');
     write('Entrer le nombre d''�l�ve: ');
     readln(n);
     for i:=1 to n do
     begin
          repeat

                write('Entrer la note /20 de l''�l�ve n�',i,': ');
                readln(note[i]);

          until ((note[i]<=20) and (note[i]>=0));
     end;
     i:=1;
     max:=0;
     while i<=n do
     begin
          if max<note[i] then
          begin
               max:=note[i];
               c:=i;
          end;
          i:=i+1;
     end;
     writeln('Note max: ',max:2:2,'/20');
     writeln('C''est la note du n�:',c);
end;
BEGIN
clrscr;
       writeln('Bonjour!');
       writeln('Faite votre choix:');
       writeln('   a)Note de l''�l�ve');
       writeln('   b)Classement de note');
       write('Choix: ');
       readln(r);
       case r of
            'a':moi;
            'b':toi;
       end;
readkey;
END.