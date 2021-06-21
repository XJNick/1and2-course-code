uses crt;
var
   n : byte;
   m : array[1..100] of integer;
begin
   read(n);
      
   for i:byte := 1 to n do
      m[i] := i*2-1;
  
   for i:byte := 1 to n do
      write(m[i]:4);
      writeln;
end.