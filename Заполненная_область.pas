uses crt;
const n = 5;
type
   line_v = array[1..n] of integer;
var
   arr: array[1..n] of line_v;
   sum:integer;
   p:byte;
   
procedure m_enter;
begin
   for i:byte := 1 to n do
      for j:byte := 1 to n do
         arr[i, j] := random(11)-5;
end;   

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
   m_enter;
   m_print;
   writeln;
   
   p:= (n div 2)+1;
   for i:byte := (n div 2)+1 to n do
   begin
      for j:byte := p to n-p+1 do
         sum := sum + arr[i,j];
      dec(p);
   end;
   writeln('Сумма элементов выделенной области = ', sum);
   writeln;
end.