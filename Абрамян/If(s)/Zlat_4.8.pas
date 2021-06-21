uses crt;
var
   a, b, c, d:real;
begin   
   write('¬ведите скорость км/ч = ');
   read(a);
   write('¬ведите скорость м/с = ');
   read(b);
   c := a*100/3600;
   d := b;
   if c>d then
   writeln(a,' км/ч больше, чем ',b,' м/с')
   else
   writeln(a,' км/ч меньше, чем ',b,' м/с')
end.   