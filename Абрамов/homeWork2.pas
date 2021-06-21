program homeWork2;

var
    x, y, z: real;
    year: integer;
begin
{a, b}
writeln('Введите x ');
readln(x);
writeln('Принадлежит ли х отрезку [0; 1]?');
if ((x>=0) and (x<=1)) then
writeln('x принадлежит отрезку [0; 1]')                 {a}
else
writeln('x не принадлежит отрезку [0; 1]');             {b}
writeln('');
  {c, d}
  writeln('Принадлежит ли х отрезку [2, 5] или [1; -1]?');
  if ((x>=2) and (x<=5)) or ((x>=-1) and (x<=1)) then 
  writeln('x принадлежит [2; 5] или [1; -1]')           {c}
  else
  writeln('x не принадлежит [2; 5] или [1; -1]');       {d}
  writeln('');
    {e, f, g, h, i}
    writeln('Введите y, z ');
    readln(y, z);
    writeln('Положительны ли все числа?');
    if (x>0) and (y>0) and (z>0) then
    writeln('Да')                                       {e}
    else
    writeln('Нет');
    writeln('');
    writeln('Одно или несколько чисел положительны?');
    if (x>0) or (y>0) or (z>0) then
    writeln('Да')    {f}
    else 
    writeln('Нет');
    writeln('');
    if (x<0) and (y<0) and (z<0) then
    writeln('Ни одно число не является положительным'); {g}
    if ((x<0) and (y<0) and (z<0)) then
    writeln('Ни одно число не положительно');           {h}
    writeln('');
    writeln('Найти одно положительное число');
    if ((x>0) and (y<0) and (z<0)) or
       ((x<0) and (y>0) and (z<0)) or
       ((x<0) and (y<0) and (z>0)) then
    writeln('Только одно число положительно')          {i}
    else 
    writeln('Таких нет');
    writeln('');
      {j}
      writeln('Введите год ');
      readln(year);
      if (year mod 4 <> 0) or (year mod 100 = 0) and (year mod 400 <> 0) then 
      writeln('Обычный')
      else 
      writeln('Високосный');
      
      
end.