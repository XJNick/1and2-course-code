uses crt;
var
   m, n: integer;
   arr: array[1..10, 1..10] of integer;
begin
   write('������� ���-�� �����: ');
   read(m);
   write('������� ���-�� ��������: ');
   read(n);
   
   for i:byte := 1 to n do
   begin
      write('������� ������� �', i, ': ');
      read(arr[1, i]);
   end;
      
   for i:byte := 2 to m do
   begin
      for j:byte := 1 to n do
         arr[i, j] := arr[i-1, j];
   end;
   
   writeln;
   for i:byte := 1 to m do
   begin
      for j:byte := 1 to n do
         write(arr[i, j]);
      writeln;
   end;
end.