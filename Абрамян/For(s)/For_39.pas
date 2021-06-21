uses crt;
var 
   a, b:integer;
begin
   read(a, b);
   writeln;
   for a1:byte := a to b do
      begin
         for k:byte := 1 to a1 do
            write(a1:4);
      writeln;
      end;
end.