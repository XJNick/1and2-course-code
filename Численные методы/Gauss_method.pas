//uses crt;
const q = 3;
type
   m_string = array[1..q] of real;{массив чисел(строка)}
var
   arr, arr_res : array[1..q] of m_string;{массив строк(матрица)}
   b_arr, b_res : array[1..q] of real;
   l:boolean;
   u,g:real;
procedure string_sort;{находим первый ненулевой элемент и мен€ем строки}
var
   p:m_string;
   i:byte;
begin
   i := 1;
   l := false;
   while ((i<=q) and not(l)) do
   begin
      if (arr[i, 1] <> 0) then
         l := true;
      
      if l then
      begin
         p := arr[i];
         arr[i] := arr[1];
         arr[1] := p;
      end;
      inc(i);
   end;
end;
procedure m_enter;{считывание массива и свободных членов из Gauss.pas}
var
   f : text;
begin
   assign(f, 'Gauss.pas');
   reset(f);
   
   for i:byte := 1 to q do
      for j:byte := 1 to q do
         read(f, arr[i][j]);
         
   for y:byte := 1 to q do
      read(f, b_arr[y]);
   
   close(f);
end;
procedure m_print;{вывод массива}
begin
   for i:byte := 1 to q do
   begin
      for j:byte := 1 to q do
         write(arr[i][j]:7);
      write(b_arr[i]:6);
      writeln;
   end;
end;
begin
   m_enter;
   string_sort;
   m_print;
   
   if l then
   begin
   u := arr[1,1];
   b_arr[1] := b_arr[1]/u;
   for i:byte := 1 to q do
      arr[1, i] := arr[1, i]/u;
      
   for k:byte := 2 to q do
   begin
     // u := arr[k, k];
      for i:byte := 1 to q do
      begin
         arr[k, i] := arr[k-1, i]*(-arr[k, i])+arr[k, i];
      end;
   end;
   
   end
   else
   begin
      writeln('Whoops, не возможно решить систему, по одной из двух причин:');
      writeln('1) ћатрица не квадратна(m<>n)');
      writeln('2) ¬ первом столбце матрицы все нули');
   end;
end.