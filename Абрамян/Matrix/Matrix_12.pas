uses crt;
var
   m, n:integer;
   arr: array[1..20, 1..20] of integer;
begin
   write('������� ���-�� �����: ');
   read(m);
   write('������� ���-�� ��������: ');
   read(n);

   for i:byte := 1 to m do
   begin
      write('������� �������� ', i,'� ������ (', n, '): ');
      for j:byte := 1 to n do
         read(arr[i, j]);
   end;         
   
   for i:byte := 1 to m do
   begin
      for j:byte := 1 to n do
         if j mod 2 = 0 then
            write(arr[m-i+1, j]:7)
         else write(arr[i,j]:7);
      writeln;
   end;
end.  