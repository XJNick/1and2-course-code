uses crt;
var
   y, c:real;
begin
   for x:integer :=21 to 35 do
      begin
         y:=x-0.6;
         writeln(x,' ',y);
      end;
      
   writeln();

   for x:integer :=16 to 24 do
      begin
         y:=x-0.5;
         c:=x-0.8;
         writeln(x, ' ',y,' ',c);
      end;
end.