uses crt;
var
   sum, dv:real;
   z:integer;
begin
   sum := 1;
   z := 1;
   for x:integer := 1 to 7 do
      begin
         z := z*3;
         dv := 1/z;
         sum := sum+dv;
      end;
   writeln(sum);
end.