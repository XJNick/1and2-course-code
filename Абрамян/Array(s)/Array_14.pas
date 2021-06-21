uses crt;
const size=255;
var
   arr: array[1..size] of integer;   
   j, n:byte;
begin
   write('Enter a size of array(<256): ');
   read(n);
   
   for i:byte := 1 to n do
   begin
      arr[i] := random(1000)+1;
      write(arr[i], ' ');
   end;      
   writeln;
      
   j := 2;      
   while j<n do
   begin
      write(arr[j], ' ');
      inc(j, 2);
   end;
   writeln;
   
   j := 1;      
   while j<n do
   begin
      write(arr[j], ' ');
      inc(j, 2);
   end;
end.