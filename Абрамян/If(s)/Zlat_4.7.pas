uses crt;
var
   a, b:real;
begin   
   write('Введите первое число = ');
   read(a);
   write('Введите второе число = ');
   read(b);
   if a>b then
   writeln('Максимальное число = ',a,', Минимальное = ',b)
   else
   writeln('Максимальное число = ',b,', Минимальное = ',a)
end.   