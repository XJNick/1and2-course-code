uses crt;
var
   m, n: integer;
   arr: array[1..10, 1..10] of integer;
begin
   write('Введите кол-во строк: ');
   read(m);
   write('Введите кол-во столбцов: ');
   read(n);
   
   for i:byte := 1 to m do
   begin
      write('Введите элемент №', i, ': ');
      read(arr[i, 1]);
   end;
      
   for i:byte := 1 to m do
   begin
      for j:byte := 2 to n do
         arr[i, j] := arr[i, j-1];
   end;
   
   writeln;
   for i:byte := 1 to m do
   begin
      for j:byte := 1 to n do
         write(arr[i, j]);
      writeln;
   end;
end.