uses crt;
var
   ch, z:integer;
   sum, dv:real;
begin
   z:=3;
   ch:=2;
   sum:=0;
   for x:byte := 3 to 9 do
      begin
         dv:=ch/z;
         sum:=sum+dv;
         ch:=ch+1;
         z:=z+1;
      end;
   writeln(sum:0:3);
end.