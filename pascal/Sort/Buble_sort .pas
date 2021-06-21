uses crt;
const n = 10;
type 
   line_v = array[1..n] of integer;
var
   arr:line_v;
   p, c, i, j:byte;
procedure m_enter;
var
   f:text;
begin
   assign(f, 'input.txt');
   reset(f);
   
      for j:byte := 1 to n do
         read(f, arr[j]);
   close(f);
end;

procedure m_print;
begin
   for i:byte := 1 to n do
      write(arr[i]:3);
end;

begin
   m_enter;
   
   for j := 1 to n-1 do
      for i := 1 to n-j do
         if arr[i] > arr[i+1] then
         begin
            p := arr[i];
            arr[i] := arr[i+1];
            arr[i+1] := p;
            inc(c);
         end;
   
   m_print;
   writeln;
   writeln(c);
end.