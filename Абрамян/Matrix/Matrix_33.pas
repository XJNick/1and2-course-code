uses crt;
var
   m, n, k, p, h:integer;
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
   
   for j:byte := 1 to n do
   begin
      for i:byte := 1 to m do
      begin
         if arr[i,j]<0 then
            inc(p);
         if arr[i, j]>0 then
            inc(h);
         if (p=h) and (i=m) then 
         k:=j;   
      end;
      p := 0;
      h := 0;
   end;
   
   writeln(k);
end.  