uses crt;
var
   a, b, c, d:real;
begin   
   write('¬ведите рассто€ние в километрах = ');
   read(a);
   write('¬ведите рассто€ние в футах = ');
   read(b);
   c := a*1000;
   d := b*0.305;
   if c>d then
   writeln(a,' километров больше, чем ',b,' футов')
   else
   writeln(a,' километров меньше, чем ',b,' футов')
end.   