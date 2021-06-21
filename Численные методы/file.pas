//uses crt;
var
   arr: array[1..7, 1..7] of integer;
   f: text;

begin 
   assign(f, 'dl.txt');
   rewrite(f);
   
   for i:byte := 1 to 7 do
   begin
      for j:byte := 1 to 7 do
      begin
         if (i=j) or (i+j=8) then
            arr[i, j] := 1
         else
            arr[i, j] := 0;
         write(f, arr[i, j]:4);
      end;
      writeln(f);
   end;
   
   close(f);
end.