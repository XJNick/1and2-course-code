uses crt;

var
   n:1..10;
begin
   n := 0;
   for i:byte := 1 to 4 do
      begin
         n := 0;
         for k:byte := 1 to 10 do
            begin
              n := n+1;
              write(n:3);
            end;
         writeln;
      end;

   writeln;
   n := 40;
   for i:byte := 1 to 4 do
      begin
         for k:byte := 1 to 10 do
            begin
               n := n+1;
               write(n:3);
            end;
         writeln;
      end;
      
end.