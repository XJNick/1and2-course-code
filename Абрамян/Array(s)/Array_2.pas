uses crt;
var
   n : byte;
   m : array[1..100] of integer;
begin
   read(n);
     
   m[1] := 2;
   for i:byte := 2 to n do
      m[i] := m[i-1]*2;
  
   for i:byte := 1 to n do
      write(m[i]:4);
      writeln;
end.