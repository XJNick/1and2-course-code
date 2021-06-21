uses crt;
const n=4;
      m=5;
type
   arr = array[1..n, 1..m] of 100..999;
var
   a:arr;
begin
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to m do
         a[i][j] := random(899)+100;       
   end;
   
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to m do
         write(a[i][j], ' ');  
      writeln;        
   end;
end.