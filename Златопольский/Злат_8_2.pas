uses crt;

var k, n: byte;
begin
   writeln;
   writeln;
   n := 0;
   for i:byte := 1 to 5 do
      begin
         n := n+1;
         k := 0;
         while k<n do
            begin
              k := k+1;
              write(5:3);
             end;
         writeln;
      end;

   writeln;
   n := 6;
   for i:byte :=1 to 5 do
      begin
         n := n-1;
         k := 0;
         while k<n do
            begin
               k := k+1;
               write(1:3);
            end;
         writeln;
      end;
      
      writeln;
      writeln;
end.