uses crt;
function f(x:real): real;
begin
   f := x*x*x*x + 2*sqr(x) - 8*x - 4;
end;
var
   a, b, c, eps: real;
   i: integer;
begin
   writeln('Поиск нуля функции полинома 4го порядка методом дихотомии');
   writeln('Полином: x^4+2x^2-8x-4');
   writeln('x принадлежит отрезку [-9; 4]');
   writeln;
   write('Введите требуемую точность вычисления: ');
   read(eps);
   
   a := -9;
   b := 4;
   c := (a+b)/2;
   i := 1;
   
   writeln;
   while abs(a-b)>eps do
   begin
      writeln(i:5,'   ', c:5:7);
      if f(a) * f(c)<0 then
         b := c
      else a := c;
      c := (a+b)/2;
      inc(i);
   end;
   writeln;
   writeln('При х=', c:0:7, ' функция=', f(c):0:7);
   writeln;
end.   