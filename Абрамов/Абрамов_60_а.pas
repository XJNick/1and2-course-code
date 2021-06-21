uses crt;
var
   u, x, y:real;
   l:Boolean;
begin
   write('Введите координаты точки(x, y) = ');
   read(x, y);
   l := (y<=0) or not(sqr(x)+sqr(y)<1) and (sqr(x)+sqr(y)<=4);
   if l then
   u := 0
   else
   u := x;
   writeln('Поподание точки(',x,',',y,') в полукольцо - ',l,', Значит u = ',u);
end.