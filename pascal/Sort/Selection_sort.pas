uses crt;
const n = 10;
type 
   line_v = array[1..n] of integer;
var
   arr:line_v;
   c, i, j, p, min, id:byte;
procedure m_enter;
var
   f:text;
begin
   assign(f, 'input.txt');
   reset(f);
   
   for i:byte := 1 to n do
      read(f, arr[i]);      

   close(f);
end;

procedure m_print;
begin
   for i:byte := 1 to n do
      write(arr[i]:5);   
end;

begin
   m_enter;
  
   for i := 1 to n-1 do
   begin
      min := arr[i];
      id := i;
      for j := i+1 to n do
         if arr[j] < min then
         begin
            min := arr[j];
            id := j;
         end;
      p := arr[i];
      arr[i] := arr[id];
      arr[id] := p;
   end;
   
   m_print;
   writeln;
   writeln(c);
end.