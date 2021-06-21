uses crt;
var
   a, b, c, d:real;
const
   pi = 3.14;
begin   
   write('¬ведите радиус круга = ');
   read(a);
   write('¬ведите сторону квадрата = ');
   read(b);
   c := pi * a * a;
   d := b*b;
   if c>d then
   writeln('ѕлощадь круга(',c,') больше, чем площадь квадрата(',d,')')
   else
   writeln('ѕлощадь квадрата(',d,') больше, чем площадь круга(',c,')')
end.   