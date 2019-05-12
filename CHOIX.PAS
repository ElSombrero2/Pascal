program choix;
uses crt;
var a,b,c,p,q,r,t,max,min,x,x1,x2,delta:real;
    i,n,S:integer;
    ans,name:string;
BEGIN
clrscr;
       writeln('Avant le commencement du programme, pr‚sentez-vous!');
       write('Vous ˆtes: ');
       readln(name);
       writeln('Bonjour ',name,'!');

       repeat
       writeln('Choisissez entre 1 et 4 s''il vous plaŒt!');
       writeln('1ø-La r‚solution de axý+bx+c=0');
       writeln('2ø-Le max et le min entre 3 valeurs');
       writeln('3ø-Le factorielle d''un nombre');
       writeln('4ø-Quitter');
       write('Choix nø: ');
       readln(t);

       if t=1 then
       begin
            writeln('1ø-R‚solution de axý+bx+c=0:');
            write('Donnez a=');
            readln(a);
            write('Donnez b=');
            readln(b);
            write('Donnez c=');
            readln(c);
            if ((a=0) and (b=0) and (c=0)) then
            writeln('La solution est tout valeur de x dans R')
            else
            begin
                 if ((a=0) and (b=0) and (c<>0))then
                 writeln('MATH ERROR')
                 else
                 begin
                      if a=0 then
                      begin
                           x:=-c/b;
                           writeln('La solution de cette ‚quation est x=',x:4:4)
                      end
                      else
                      begin
                           delta:=sqr(b)-4*a*c;
                           if delta<0 then
                           writeln('Pas de solution')
                           else
                           begin
                                if delta=0 then
                                begin
                                     x:=-b/2*a;
                                     writeln('La solution est x=',x:4:4);
                                end
                                else
                                begin
                                     x1:=(-b-sqr(delta))/2*a;
                                     x2:=(-b+sqr(delta))/2*a;
                                     writeln('La solution est:');
                                     writeln('   - x''=',x1:4:4);
                                     writeln('   - x''''=',x2:4:4);
                                end;
                           end;
                      end;
                 end;
            end;
       end;

       if t=2 then
       begin
            writeln('2ø-Le max et le min entre 3 valeurs:');
            write('Entrez q: ');
            readln(q);
            write('Entrez p: ');
            readln(p);
            write('Entrez r: ');
            readln(r);
            if ((q<p) and (q<r) and (p<r)) then
            begin
                 min:=q;
                 max:=r;
                 writeln('Le min est ',min:4:4);
                 writeln('Le max est ',max:4:4);
            end
            else
            begin
                 if ((p<q) and (p<r) and (q<r)) then
                 begin
                      min:=p;
                      max:=r;
                      writeln('Le min est ',min:4:4);
                      writeln('Le max est ',max:4:4);
                 end
                 else
                 begin
                      if((q<r) and (q<p) and (r<p)) then
                      begin
                           min:=q;
                           max:=p;
                           writeln('Le min est ',min:4:4);
                           writeln('Le max est ',max:4:4);
                      end
                      else
                      begin
                           if((r<p) and (r<q) and (q<p))then
                           begin
                                min:=r;
                                max:=p;
                                writeln('Le min est ',min:4:4);
                                writeln('Le max est ',max:4:4);
                           end
                           else
                           begin
                                if ((r<p) and (r<q) and (p<q)) then
                                begin
                                     min:=r;
                                     max:=q;
                                     writeln('Le min est ',min:4:4);
                                     writeln('Le max est ',max:4:4);
                                end
                                else
                                begin
                                     min:=p;
                                     max:=q;
                                     writeln('Le min est ',min:4:4);
                                     writeln('Le max est ',max:4:4);
                                end;
                           end;
                      end;
                 end;
            end;
       end;

       if t=3 then
       begin
            writeln('3ø-Factorielle d''un nombre:');
            write('Entrez n: ');
            readln(n);
            S:=1;
            for i:=1 to n do
            S:=S*i;
            writeln(n,'!= ',S);
       end;

       if t=4 then
       begin
            writeln('Quitter');
            writeln('A bient“t ',name);
       end;

       repeat
       writeln('Voulez-vous continuer?(YES/NO)');
       readln(ans);
       until((ans='NO') or (ans='YES'));

       until(ans='NO');
       writeln('A bient“t ',name);
       writeln('Ferm‚ture du programme ''Choix''.');
readkey;
END.