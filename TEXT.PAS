program bc;
uses crt;
type text=file of char;
var f:text;
    c,d:char;
    m,txt,src,ans:string;
    r:byte;
    i,j,n:integer;
    t:boolean;
procedure texte(var f:text;var txt:string);
begin
     clrscr;
     c:=char(13);
     d:=char(10);
     writeln('Titre du texte: ',src);
     reset(f);
              seek(f,filesize(f));
              repeat
                    readln(txt);
                    if txt='STOP' then break;
                    for i:=1 to length(txt) do write(f,txt[i]);
                    write(f,c);
                    write(f,d);
              until txt='STOP';
     close(f);
end;
procedure creer;
var ch : char;
begin
     rewrite(f);
     close(f);
     texte(f,txt);
     {writeln('Le texte a ‚t‚ cr‚er sous le nom de: ',src);
    } write('Mot a rechercher: '); readln(m);

     assign(f,src);
     {write('mety');}
     reset(f);
     txt:='';
     while not eof(f) do
     begin
          read(f,ch);
          write(ch);
          txt:= txt+ch;
     end;
     i:=1; t:=false;
     repeat
           for j:=1 to length(txt) do
           repeat
                 if m[i]=txt[j] then
                 begin
                      i:=i+1; n:=n+1;
                      j:=j+1;
                 end;
           until ((m[i]<>txt[j]) or (n=length(m)));
     until ((t=true));

     {
     begin
          read(f,ch);
          t:=false;
          i:=1;
          j:=1;
          n:=1;
          repeat

                repeat
                      if ch=m[i] then
                      begin
                           write(ch,'=',m[i]);
                           i:=i+1;
                           j:=j+1;
                           n:=n+1;
                      end
                      else
                      begin
                           n:=1;
                           break;
                      end;
                until ((txt[j]<>m[i]) or (i=length(m)));
                if i=length(m) then
                begin
                     t:=true;
                     break;
                end;
                j:=j+1;
          until ((length(txt)=j) or (t=true));
     end;
     if t=true then write(m,' existe') else writeln(m,' est n‚ant');
    } close(f);
end;
procedure voir;
begin

end;
BEGIN
     clrscr;
     writeln('Bienvenue dans le programme texte!');
     repeat
           write('Entrer le nom du fichier: '); readln(src);
           src:=src+'.txt';
           writeln('Faire votre choix:');
           writeln('1- Nouveaux texte');
           writeln('2- Continuer le texte');
           writeln('3- Voir le texte existant');
           write('Choix: ');
           repeat readln(r); until ((r=1)or(r=2)or(r=3));
           case r of
                1:
                begin
                     clrscr;
                     assign(f,src);
                     creer;
                end;
                2:
                begin
                     clrscr;
                     assign(f,src);
                     texte(f,txt);
                end;
                3:voir;
           end;
           repeat
                 writeln('Voulez-vous continuer?(yes/no):');
                 readln(ans);
           until ((ans='yes')or(ans='no'));
     until ans='no';
     readkey;
END.