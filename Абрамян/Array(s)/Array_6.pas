uses crt;
var
   k: 3..255;
   a, b: real;
   n: array[1..100] of real;
begin
   write('Enter a size of the array: ');
      read(k);
   write('Enter the 1st element: ');
      read(a);
   write('Enter the 2nd element: ');
      read(b);
      
   
   
   n[1] := a;
   n[2] := b;
   n[3] := a+b;

   for i:byte := 4 to k do
      n[i] := n[i-1] * 2;
  
   for i:byte := 1 to k do
      writeln(n[i]);
   writeln;
end.