uses crt;
var
   u, x, y:real;
   l:Boolean;
begin
   write('Введите координаты точки(x, y) = ');
   read(x, y);
   l :=(y>=0) and (sqr(x)+sqr(y)<=1) and not(sqr(x)+sqr(y-1)<0.09);
   if l then
   u := x*x-1
   else
   u := sqrt(abs(x-1));
   //writeln(l);
   writeln('Поподание точки(',x,',',y,') в полукруг без четверти - ',l,', Значит u = ',u:0:2);
end.