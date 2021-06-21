uses crt;
var
   m, n, k, p, h, l:integer;
   arr: array[1..20, 1..20] of integer;
begin
   write('¬ведите кол-во строк: ');
   read(m);
   write('¬ведите кол-во столбцов: ');
   read(n);

   for i:byte := 1 to m do
   begin
      write('¬ведите элементы ', i,'й строки (', n, '): ');
      for j:byte := 1 to n do
         read(arr[i, j]);
   end;         
   
   l := 0;
   while k=0 do
   begin
      inc(l);
      for j:byte := 1 to n do
      begin
         if arr[l,j]<0 then
            inc(p);
         if arr[l, j]>0 then
            inc(h);
         if (p=h) and (j=n) then 
            k:=l;   
      end;
      p := 0;
      h := 0;
   end;
   
   writeln(k);
end.  