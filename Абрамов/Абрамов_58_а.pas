//uses crt;
var
   x, y:real;
   r:1..1;
begin
   write('¬ведите координаты точки(x, y) = ');
   read(x, y);
   if x*x + y*y = r*r then
    writeln('“очка с координатами (',x,',',y,') находитс€ на окружности')
   else 
      if x*x + y*y < r*r then
         writeln('“очка с координатами (',x,',',y,') находитс€ в окружности')
      else
         writeln('“очка с координатами (',x,',',y,') находитс€ вне окружности');
end.