uses crt;
const n = 10;
type 
   line_v = array[1..n] of integer;
var
   arr:line_v;
   c, i, j, p:byte;
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
  
   for i := 2 to n do
   begin
      p := arr[i];
      j := i-1;
      while (j>=1) and (arr[j]>p) do
      begin
         arr[j+1] := arr[j];
         dec(j);
         inc(c);
      end;
      arr[j+1] := p;
   end;
   
   m_print;
   writeln;
   writeln(c);
end.