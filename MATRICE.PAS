program matrice;
uses crt;
var n,i,j,k,l,c,m,x,y,z:integer;
    t:array[1..5,1..5] of integer;
    ans:char;
procedure transposer;
begin
     writeln('a)Transpos‚:');
     for i:=1 to n do
     begin
          writeln('Transpos‚ de t',i,' :');
          for x:=1 to c do
          begin
               for y:=1 to l do
               write(t[y,x],' ');
               writeln;

          end;
     end;
     writeln;
end;
procedure addition;
begin
end;
procedure multiplication;
begin
end;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     for i:=1 to n do
     begin
          writeln('Matrice nø',i,':');
          write('Entrer l: ');
          readln(l);
          write('Entrer c: ');
          readln(c);
          for x:=1 to l do
          begin
               for y:=1 to c do
               begin
                    write('t[',x,',',y,']: ');
                    readln(t[x,y]);
               end;
          end;
          for x:=1 to l do
          begin
               for y:=1 to c do
               write(t[x,y],' ');
               writeln;
          end;
     end;
     writeln('Choisir entre a et c:');
     writeln('   a)Transposer de t1');
     writeln('   b)Addition de t1 et t2');
     writeln('   c)Multiplication de t1 et t2');
     write('Choix: ');
     readln(ans);
     case ans of
          'a':transposer;
          'b':addition;
          'c':multiplication;
     end;
     readkey;
END.