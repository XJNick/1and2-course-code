uses crt;
var
   k, n: byte;
   a: integer;
   arr: array[1..100] of integer;
begin
   k := 0;
   write('Enter a size of the array: ');
      read(n);

   for i:byte := 1 to n do
   begin
      write('Enter the ' ,i, ' element: ');
         read(a);
      if a mod 2 = 1 then
      begin
         inc(k);
         arr[k] := a;
      end;
   end;
   
   for i:byte := 1 to k do
      writeln(arr[i]);
   writeln(k);
  
end.