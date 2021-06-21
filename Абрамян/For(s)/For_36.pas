uses crt;
var
   n, k:byte;
   sum:real;
   f:integer;
begin
   write('');
   read(n, k);
   sum := 0;
   for i:byte := 1 to n do
      begin
         f := i;
         for c:byte := 1 to k-1 do
            f := f*i;
         sum := sum+f;
      end;
   writeln(sum);
end.