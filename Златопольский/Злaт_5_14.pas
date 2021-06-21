uses crt;
var
   i:byte:=1;
begin
   for x:byte :=1 to 9 do
      begin
         i:=9*x;
         writeln('9x',x,'=',i);
      end;
end.