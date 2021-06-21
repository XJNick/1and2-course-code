uses crt;
var
   u, x, y:real;
   l:Boolean;
begin
   write('Введите координаты точки(x, y) = ');
   read(x, y);
   l := (sqr(x)+sqr(y)<=1) and (y<=x/2);
   if l then
   u := -3
   else
   u := y*y;
   writeln('Поподание точки(',x,',',y,') полукруг - ',l,', Значит u = ',u);
end.