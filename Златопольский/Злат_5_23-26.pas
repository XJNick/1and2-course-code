uses crt;
var
   i:real;
begin
   i:=2;
   for x:integer := 1 to 8 do
      begin
         i:=i+0.1;
         writeln(i);
      end;
   writeln();
   Sleep(1000);
   i:=3.1;
   for x:integer := 1 to 8 do
      begin
         i:=i+0.1;
         writeln(i);
         writeln(i);
      end;
   writeln();
   Sleep(1000);
   i:=2;
   for x:integer := 1 to 11 do
      begin
         i:=i+0.2;
         writeln(i);
      end;
   writeln();
   Sleep(1000);
   i:=4.4;
   for x:integer := 1 to 11 do
      begin
         writeln(i);
         i:=i+0.2;
      end;      
end.