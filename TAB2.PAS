program tab2;
uses crt;
var c,n,i,j,a,b,x,rep:integer;
    t,l,u:array[1..10,1..10] of integer;
    ans:string;
    p,s:array[1..10] of integer;
BEGIN
     clrscr;
     write('Entrer n: ');
     readln(n);
     a:=0;
     b:=0;
     for i:=1 to n do
     begin
          for j:=1 to n do
          begin
               repeat
                     write('Y-a-t''il un arc entre ',i,' et ',j,'?(Y/N): ');
                     readln(ans);
               until ((ans='Y') or (ans='N'));
               if ans='Y' then
               {begin
                    write('Donner son poids l(',i,',',j,'): ');
                    readln(l[i,j]);}
                    t[i,j]:=1;

               {end;}
          end;
     end;
     repeat
     repeat
           write('Entrer un sommet x: ');
           readln(x);
     until((x<=n) and (x>0));
     c:=0;
     for j:=1 to n do
     begin

          i:=x;
               if t[x,j]=1 then
               begin
                    s[x]:=j;

                    {if p[x]<>x then
                    begin}
                         writeln('p de ',x,' est: ',p[x]);
                         b:=b+1;
                    {end;}
               end;
               if t[i,x]=1 then
               begin
                    p[x]:=i;
                    {if s[x]<>x then
                    begin}
                         writeln('s de ',x,' est: ',s[x]);
                         a:=a+1;
                    {end;}
               end;

     end;
     writeln('Le nombre de successeur de ',x,': ',b);
     writeln('Le nombre de pr‚d‚c‚sseur de ',x,': ',a);
     repeat
           write('Again or exit?(0/1): ');
           readln(rep);
     until ((rep=0) or (rep=1));
     until rep=0;
     readkey;
END.