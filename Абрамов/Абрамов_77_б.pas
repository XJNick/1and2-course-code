uses crt;
var 
   rez, a, n, c, a1:integer;
begin
   read(a, n);
   c := 1;
   rez := 1;
   a1 := a;
   while c<n do
      begin
         rez := rez*a1;
         a1 := a+c;
         c := c+1;
      end;
   rez := rez*a1;
   writeln(rez);
end.   