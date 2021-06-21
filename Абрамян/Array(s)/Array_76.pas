uses crt;
const n=15;
type
   arr = array[1..n] of integer;
var
   a:arr;   
begin
   for i:byte := 1 to n do
   begin
      a[i] := random(1000)+1;
      write(a[i], ' ');
   end;
   writeln;
   
   write(a[1], ' ');
   for i:byte := 2 to n-1 do
   begin
      if (a[i]>a[i-1]) and (a[i]>a[i+1]) then
         a[i] := 0;
      write(a[i], ' ');
   end;
end.