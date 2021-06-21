uses Crt;

function main(x: real): real; {Основная функция}
begin
   main:= sqr(x) * sqr(x) + 2*sqr(x) - 8*x - 4;
end;

function der(x:real): real; {Производная от основной функции}
begin
   der:=4*(sqr(x)*x + x - 2);
end;
var
   x, a, b, eps: real;
   i:integer;
begin
   writeln('Поиск нуля функции полинома 4го порядка методом Ньютона');
   writeln('Полином: x^4+2x^2-8x-4');
   write('Введите требуемую точность вычисления: ');
   read(eps);
   
   i := 0;

   while abs(main(x))>eps do
   begin
      inc(i);
      x:=x-main(x)/der(x);
      writeln ('  ',i, '  ', 'x=',x:0:5,' f(x)=',main(x):0:5);
   end;
   writeln;
   writeln('В итоге: ', 'x=',x:0:5,' f(x)=',main(x):0:10);
end.