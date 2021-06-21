uses crt;
const size=11;
var
   arr: array[1..size] of integer;   
   n : -1..11;
begin
   n := size;
   for i:byte := 1 to n do
   begin
      arr[i] := random(1000);
      write(arr[i], ' ');
   end;
      
   writeln;
   while n>0 do
   begin
      write(arr[n], ' ');
      dec(n, 2);
   end;
end.