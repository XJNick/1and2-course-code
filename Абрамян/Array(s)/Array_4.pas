uses crt;
var
   a, k: byte;
   d, d0: real;
   n: array[1..100] of real;
begin
   write('Enter a size of the array: ');
      read(k);
   write('Enter the 1st num: ');
      read(a);
   write('Enter the denominator of geometric progression: ');
      read(d);
   d0 := d;
   
   for i:byte := 1 to k do
   begin
      n[i] := a*d;
      d := d*d0;
   end;
   
   for i:byte := 1 to k do
      write(n[i]:7:1);
   writeln();
end.