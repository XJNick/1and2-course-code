uses crt;
const n=2;
   m=3;
   n1=3;
   m1=4;
var   
   a: array[1..n, 1..m] of integer;
   b: array[1..n1, 1..m1] of integer;
   c: array[1..n, 1..m1] of integer;
   k, sum : integer;  
begin
   for i:byte := 1 to n do
      for j:byte := 1 to m do
         a[i, j] := random(200)-100;
         
   for i:byte := 1 to n1 do
      for j:byte := 1 to m1 do
         b[i, j] := random(200)-100;
         
   writeln('Матрица А, размером 2х3:');
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to m do
         write(a[i, j]:5);
      writeln;
   end;
   writeln;
   
   writeln('Матрица Б, размером 3х4: ');
   for i:byte := 1 to n1 do
   begin
      for j:byte := 1 to m1 do
         write(b[i, j]:5);
      writeln;
   end;
   writeln;
   
   writeln('Матрица C, размером 2х4: ');
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to m1 do
      begin
         sum := 0;
         k := 0;
         for h:byte := 1 to m1-1 do
         begin
            inc(k);
            sum := sum + a[i, k] * b[k, j];
         end;
         c[i, j] := sum;
      end;
   end;
   
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to m1 do
         write(c[i, j]:7);
      writeln;         
   end;
   writeln;
   
   writeln('Программу подготовил и сдал: Громыко Никита 207-П');
   writeln;
end.   