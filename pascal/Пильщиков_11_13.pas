uses crt;
var
   a, b, x1, x2, x3, x4: real;
   t: boolean;
function discriminant(a, b:real):real;
begin
   discriminant := sqr(b)-a*4;
end;

procedure solX(b, d:real; var u1, u2:real);
begin
   u1 := (-b+sqrt(d))/2;
   u2 := (-b-sqrt(d))/2;
end;

begin 
   {Контрольные примеры:
      1) Есть корни и удовлетворяют условию => a=2, b=1.97;
      2) Есть корни, но не удовлетворяют условию => a=3, b= 1;
      3) Нет корней первого уравнения => a=4, b=3;
      4) Нет корней второго уравнения => a=2, b=3}
   write('Введите a, b: ');
   read(a, b);
   solX(6.2, discriminant(a*a, 6.2), x1, x2);
   writeln('x1=',x1:0:3, ' ', 'x2=', x2:0:3);
   solX(a, discriminant(b-1, a), x3, x4);
   writeln('x3=',x3:0:3, ' ', 'x4=', x4:0:3);
   
   t := (x1>x3) and (x4>x2);
   writeln(t);
end.