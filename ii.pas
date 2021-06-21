//uses crt;
const n = 8;
type
   line_v = array[1..n] of integer;
var
   arr: array[1..n] of line_v;
   i, j, p:byte;
   
procedure m_print;
begin
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to n do
         write(arr[i, j]:5);
      writeln;
   end;
end; 

begin
   p := 1;
   for i := 1 to n-1 do
   begin
      for j := 1 to n-1 do
      begin
         arr[i, j] := i+j-1;
      end;
      arr[i, n] := n-p;
      arr[n, i] := p-n;
      inc(p);
   end;
   arr[1, n] := n;
   arr[n, 1] := n;
   m_print;
end.