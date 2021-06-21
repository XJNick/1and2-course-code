uses crt;
var
   u, x, y:real;
   l:Boolean;
begin
   write('Введите координаты точки(x, y) = ');
   read(x, y);
   l := (sqr(x)+sqr(y-1)<=1) and (y<=1-x*x);
   if l then
   u := x-y
   else
   u := x*y+7;
   //writeln(l);
   writeln('Поподание точки(',x,',',y,') в круг - ',l,', Значит u = ',u);
end.