uses crt;
var
   n, z:integer;
   sum, dv:real;
begin
   write('');
   read(n);
   z:=1;
   sum:=1;
   for x:byte := 1 to n do
      begin
         z := z+1;
         dv :=1/z;
         sum := sum + dv;
      end;
   writeln(sum:0:3);
end.