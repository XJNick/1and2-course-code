uses crt;
const n = 4;
type 
   line_v = array[1..n] of real;
var
   arr:array[1..n] of line_v;
   b_arr, x_arr: line_v;
   E, p, x_calc, s, d_sum:real;
   dominance:boolean;
   q: byte;
procedure m_enter;
var
   f:text;
begin
   assign(f, 'СЛУ_Зейделя.txt');
   reset(f);
   
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to n do
         read(f, arr[i, j]);
   end;
   for i:byte := 1 to n do
      read(f, b_arr[i]);
   close(f);
end;

procedure m_print;
begin
   writeln('Дана матица ', n,'x',n, ':');
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to n do
         write(arr[i, j]:5);
      write('|':3,b_arr[i]:5);
      writeln;
   end;
end;

procedure x_arr_print;
begin
   for i:byte := 1 to n do
   begin
      write('x[', i,'] = ', x_arr[i]:0:4);
      writeln;
   end;
end;

procedure equals_check;
var k, h:byte;
begin
   writeln('Проверка:');
   for h := 1 to n do
   begin
      for k := 1 to n-1 do
      begin
         write(arr[h, k], ' * ', x_arr[k]:0:4, ' + ');
      end;
      write(' * ', arr[h, k+1], ' * ', x_arr[k+1]:0:4, ' = ', b_arr[h]:0:3);
      writeln();
   end;
end;

procedure dominance_check;
begin
   dominance := true;
   for i:byte := 1 to n do
   begin
      d_sum := 0;
      for j:byte := 1 to n do
         if i<>j then
            d_sum := d_sum + abs(arr[i, j]);
      dominance := dominance and (arr[i, i] > d_sum);
   end;
end;

function sum(a1,x1:real):real;
begin
   s := s+a1*x1;
   sum := s;
end;

begin
   E := 0.001;
   m_enter;
   m_print;
   dominance_check;
//   preobl := (abs(arr[1, 1]) > abs(arr[1, 2]) + abs(arr[1, 3]) + abs(arr[1, 4])) and
//             (abs(arr[2, 2]) > abs(arr[2, 1]) + abs(arr[2, 3]) + abs(arr[2, 4])) and
//             (abs(arr[3, 3]) > abs(arr[3, 1]) + abs(arr[3, 2]) + abs(arr[3, 4])) and
//             (abs(arr[4, 4]) > abs(arr[4, 1]) + abs(arr[4, 2]) + abs(arr[4, 3]));
   
   if (dominance) then
      begin
      q := 1;
      repeat
      p := 0; {начальное приближение}
      for i:byte := 1 to n do
      begin
         s := 0;
         for j:byte := 1 to n do
            if i<>j then
               sum(arr[i,j], x_arr[j]);{считаем сумму}
         x_calc := (b_arr[i] - s) / arr[i, i];{считываем новый х}
         if p<(abs(x_calc - x_arr[i])) then {если начальное приближ. < текущ. то}
            p := abs(x_calc - x_arr[i]); {обновляем приблежение}
         x_arr[i] := x_calc;

      end;
      writeln('Итерация ', q, ':');
      x_arr_print;
      writeln;
      inc(q);
      until p<E;
      
      writeln('Итог: ');
      for i:byte := 1 to n do
      begin
         write('x[', i,']=', x_arr[i]:0:4);
         writeln;
      end;
      
      equals_check();
      
   end
   else
      writeln('Система не имеет решений, т.к нарушено диагональное преобладание');
end.