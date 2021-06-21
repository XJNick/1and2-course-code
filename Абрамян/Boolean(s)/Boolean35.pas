uses crt;
var
   k:string;
   x, x1, y, y1:1..8;
   l:Boolean;
begin
   write('¬ведите координаты пол€1 (1-8) => ');
   read(x, y);
   write('¬ведите координаты пол€2 (1-8) => ');
   readln(x1, y1);
   l:=((x+y) mod 2) = ((x1+y1) mod 2);
   if not l then
   k := 'не ';
   writeln('÷вета полей, чьи координаты вы ввели, ',k,'одинаковы');
end.