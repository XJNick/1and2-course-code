uses crt;

var
   n, k, m:byte;
begin
   n := 0;
   for i:byte :=0 to 4 do
      begin
         n := n+1;
         k := 0;
         while k<n do
            begin
               k := k+1;
               write(n:3);
            end;
         writeln;
      end;

   writeln;
   n := 6;
   m := 4;
   for i:byte := 0 to 4 do
      begin
         n := n-1;
         m := m+1;
         k := 0;
         while k<n do
            begin
               k := k+1;
               write(m:3);
            end;
         writeln;
      end;

   writeln;
   n := 0;
   k := 0;
   for i:byte := 0 to 4 do
      begin
         n := n+1;
         m := k+1;
         k := 0;
         while k<n do
            begin
               k := k+1;
              write(m*10:3);
            end;
         writeln;
      end;
      
   writeln;
   n := 6;
   m := 0;
   for i:byte := 0 to 4 do
      begin
         n := n-1;
         m := m+5;
         k := 0;
         while k<n do
            begin
               k := k+1;
               write(m:3);
            end;
         writeln;
      end;
end.