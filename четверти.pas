//uses crt;
const n = 6;
type
   line_v = array[1..n] of integer;
var
   arr: array[1..n] of line_v;
   p, h:integer;
   
procedure m_enter;
begin
   p := 1;
   for i:byte := 1 to n do
      for j:byte := 1 to n do
      begin
         arr[i, j] := p;
         inc(p);
      end;
end;   

procedure m_print;
begin
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to n do
      begin
         if (i+j<6) and (i<3) then
            Textcolor(2);
         write(arr[i, j]:5);
      end;
      writeln;
   end;
end; 
  
  
procedure swipe;
begin
   for i:byte := (n div 2)+1 to n do
      for j:byte := 1 to n div 2 do
      begin
         p := arr[i, j + n div 2];
         arr[i, j + n div 2] := arr[i, j];
         arr[i, j] := p;
      end;
end;

begin 
   m_enter;
   m_print;
   writeln;
   
   swipe;
   m_print;

end.