//uses crt;
const n = 3;
type 
   line_v = array[1..n] of real;
var
   arr:array[1..n] of line_v;
   barr: line_v;
   u:real;
procedure m_enter;
var
   f:text;
begin
   assign(f, 'matrix_Гаусса.txt');
   reset(f);
   
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to n do
         read(f, arr[i, j]);
   end;
   for i:byte := 1 to n do
      read(f, barr[i]);
   close(f);
end;

procedure m_print;
begin
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to n do
         write(arr[i, j]:5);
      write(barr[i]:5);
      writeln;
   end;
end;

begin
   m_enter;
   m_print;
   writeln;
   
   u := arr[1, 1];
   for i:byte := 1 to n do
      arr[1, i] := arr[1, i]/u;
   barr[1] := barr[1]/u;
   m_print;
   
   for i:byte := 2 to n do
   begin
      u := arr[];
      for j:byte := 1 to n do
      begin
      
      end
   end;
end.