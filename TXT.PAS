uses crt;
type fichier=file of char;
var mot,link,txt:string;
    f:fichier;
    tmp,n:integer;
    c:char;
procedure aff(var f:fichier);
var c:char;
begin
     reset(f);
     while not eof(f) do
     begin
          read(f,c);
          write(c);
     end;
     close(f);
end;
{function rec(var f:fichier; var mot:string):integer;
var c,tmp:char;
    mot2:string;
    i,p,pnow:integer;
begin
     mot2:='';
     rec:=0;
     reset(f);
     p:=0;
     while not eof(f) do
     begin
          read(f,c);
          if c=mot[1] then
          begin
               p:=filepos(f)-1;
               for i:=1 to length(mot) do
               begin
                    seek(f,p);
                    read(f,tmp);
                    if tmp='' then break;
                    mot2:=mot2+tmp;
                    if mot2=mot then
                    begin
                         rec:=rec(f,mot)+1;
                         break;
                    end;
                    inc(p);
               end;
               mot2:='';
          end;
     end;
     close(f);
end;}
{function ver(var f:fichier; var mot:string; var tmp:integer):boolean;
var i,j,k:integer;
    txt:string;
begin
     n:=0;
     repeat
           for i:=1 to length(txt) do
           begin
                if ((mot[1]=txt[i])and(txt[i-1]='')) then
                begin
                     j:=1; k:=i;
                     repeat
                           if mot[j]=txt[k] then
                           begin
                                j:=j+1;
                                k:=k+1;
                                n:=n+1;
                           end;
                     until((mot[j]<>txt[k])or((n=length(mot))and(txt[k+1]='')));
                end;
                if ((n=length(mot))and(txt[k+1]='')) then
                begin
                     ver:=true;
                     tmp:=tmp+1;
                end
                else ver:=false;
           end;
     until i=length(txt);
end;}
function ver(var f:fichier; var mot:string; var tmp:integer):boolean;
var i,j,k:integer;
    txt:string;
    c:char;
begin
     n:=0;
     reset(f);
     while not eof(f) do
     begin
                read(f,c);
                if (mot[1]=c) then
                begin
                     j:=1;
                     seek(f,filepos(f)-1);
                     repeat
                           if mot[j]=c then
                           begin
                                j:=j+1;
                                n:=n+1;
                           end;
                     until((mot[j]<>c)or((n=length(mot))and(c='')));
                end;
                if ((n=length(mot))and(c='')) then
                begin
                     ver:=true;
                     tmp:=tmp+1;
                end
                else ver:=false;
     end;
     close(f);
end;

BEGIN
     clrscr;
     write('Nom du fichier: '); readln(link);
     link:=link+'.txt';
     assign(f,link);
     aff(f);
     writeln;
     write('Entrer un mot: '); readln(mot);
     assign(f,link);
     {tmp:=rec(f,mot);
     if tmp>0 then writeln('Le mot ',mot,' revient ',tmp,' fois')
     else writeln('Le mot n''existe pas dans le texte');}
     txt:='';
     reset(f);
     while not eof(f) do
     begin
          read(f,c);
          txt:=txt+c;
     end;
     close(f);
     tmp:=0;
     if ver(f,mot,tmp)=true then write('Le mot ''',mot,''' est dans le texte');
     readkey;
END.