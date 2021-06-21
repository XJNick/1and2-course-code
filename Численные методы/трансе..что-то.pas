//uses crt;
const n = 5;
var
   arr : array[1..n, 1..n] of integer;
   h, p : byte;
begin
   h := 1;

   for i:byte := 1 to n do
      for j:byte := 1 to n do
      begin
         arr[i, j] := h;
         inc(h);
      end;
      
   for i:byte := 1 to n do
      for j:byte := 1 to n do
      begin
         if i=j then
         begin
            p := i;
            arr[i, j] := j;
            j := p;
         end;
      end;
end.