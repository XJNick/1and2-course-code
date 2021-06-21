uses crt;
var 
   a, b, m:integer;
begin
   read(a, b);
   writeln;
   m := 1;
   for a1:byte := a to b do
      begin
         for k:byte := 1 to m do
            write(a1:4);
      writeln;
      m := m+1;
      end;
end.