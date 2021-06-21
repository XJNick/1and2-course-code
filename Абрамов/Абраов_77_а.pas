uses crt;
var
   x, n: real;
   i: integer;
begin
   write('¬ведите число: ');
   read(n);
   i := 1;
   x := 2;
   while n>i do
   begin
      i := i+1;
      x := x*2;
   end;
   writeln(x);
end.