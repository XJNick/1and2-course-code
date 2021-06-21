uses crt;
var
   k: 3..255;
   a: integer;
   n: array[1..100] of integer;
begin
   write('Enter a size of the array: ');
      read(k);

   for i:byte := 1 to k do
   begin
      write('Enter the ' ,i, ' element: ');
         read(a);
      n[i] := a;         
   end;
  
   for i:byte := k downto 1 do
      writeln(n[i]);
   writeln;
end.