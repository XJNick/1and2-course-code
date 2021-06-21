uses crt;
var
   n:integer;
begin
   write('¬ведите число (>0): ');
   read(n);
   while n>0 do
      begin 
         write(n mod 10:2);
         n := n div 10;
      end;
   writeln;
end.