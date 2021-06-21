uses crt;
var
   x, y:real;
   r:shortint;
   w:string;
begin
   r := 1;
   write('¬ведите координаты точки(x, y) = ');
   read(x, y);
   if x*x + y*y = r*r then
    w := 'на ';
      if (sqr(x) + sqr(y) > sqr(r)) then
         w := 'вне '
      else
         w := 'в ';
   writeln('“очка с координатами (',x,',',y,') находитс€ ',w,'окружности');
end.