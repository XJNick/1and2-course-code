uses crt;
var k, n, u:byte;
 m:shortint;
begin
   n := 0;
   m := 0; 
   for i:byte := 0 to 4 do
      begin
         m := n+1;
         n := n+1;
         k := 0;
         while k<n do
            begin
               k := k+1;
               m := m-1;
               write(m:3);
            end;
      writeln;
      end;
   
   writeln;
   n := 5;
   m := 4; 
   u := 9;
   for i:byte := 0 to 4 do
      begin
         m := n+1;
         n := n-1;
         k := 0;
         if i=4 then
            u := 2;
         write(u:3);
         while k<n do
            begin
               k := k+1;
               m := m-1;
               write(m:3);
            end;
      writeln;
      end;

   writeln;    
   n := 30;
   u := 30;
   for i:byte := 0 to 4 do
      begin
         u := u-1;
         k := u;
         while k<=n-1 do
            begin
               k := k+1;
               write(k:3);
            end;
      writeln;
      end;

   writeln;
   n := 20;
   for i:byte := 0 to 4 do
      begin
         n := n-1;
         k := 14;
         m := n;
         while k<n do
            begin
               k := k+1;
               m := m+1;
               write(m:3);
            end;
      writeln;
      end;
end.