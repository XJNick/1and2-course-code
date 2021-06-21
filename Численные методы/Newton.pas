uses crt;

function main(x:real):real;
begin
   main := sqr(x) * sqr(x) + 2*sqr(x) - 8*x - 4; {полином 4го порядка}
end;  
function der(x:real):real;
begin
   der := 4*(x*x*x + x - 2); {производная от полинома}
   //x*x*x + 4*x-8;
end;   
   
var
   a, b, x, xn, eps: real;
   i: integer;
begin
   writeln('Поиск нуля функции полинома 4го порядка методом Ньютона');
   writeln('Полином: x^4+2x^2-8x-4');
   writeln('x0 приблизительно = 1');
   writeln;
   write('Введите требуемую точность вычисления: ');
   read(eps);
   writeln;
   
   a := 1;
   
   a := abs(a-b); {положим значение в а, чтобы сэкономить на переменной}
   i := 1;
   x := a;
   
   writeln('  Номер', 'х':15, 'функция':20);
   xn := main(x);
   while (xn-x>eps) do
   begin
      x := xn;
      x := x-(main(x)/der(x));
      inc(i);
      if main(xn) = 0 then 
         x := xn;
      writeln(i:5, '  ', x:20:7, '      ',main(x):0:10);
   end;
   writeln;
   write('При x=', x:7);
   writeln(' Функция = ', main(x):0:10);
   writeln;
end.