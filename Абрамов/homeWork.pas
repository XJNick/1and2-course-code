program Home_work;

var
    k: integer;                {1я задача}
    a, b, c, D: integer;       {2я задача}
    t, o, r, m: integer;       {3я задача}
    x, y: shortint;            {3я задача}
begin
{Задача №1}
writeln('Условие: k делится на 7 без остатка');
writeln('Введите число ');
readln(k);
if k mod 7>0 then
writeln('Число делится на 7 с остатком(false)')
else
writeln('Число делится на 7 без остатка(true)');

  {Задача №2}
  writeln('Условие: Уравнение типа ax^2 + bx + c = 0 не имеет корней');
  writeln('Введие a, b, c ');
  readln(a, b, c);
  D := b*b - 4*a*c;
  if D<0 then
  writeln('Корней нет(true)')
  else
  writeln('Уравнение имеет решение(false)');
    
    {Задача №3}
    writeln('Условие: точка(х, у) лежит вне окружности');
    x := -1;
    y := 0;
    writeln('Введите радиус ');
    read(r);
    writeln('Введите t, o ');
    read(t, o);
    m := sqr(x-t) + sqr(y-o);
    if m > sqr(r) then
    write('Точка вне окружности(true)')
    else
    write('Точка в окружности(false)');
end.