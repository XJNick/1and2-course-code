uses crt;
var
   x:char;
   k:string;
   y, n:1..8;
   l:Boolean;
begin
   write('Введите координаты поля (a-h, 1-8) => ');
   read(x, y);
   n := ord(x)-96;
   l := 0=((n+y) mod 2);
   if l then
   k := 'не ';
   writeln('Поле, чьи координаты вы ввели, ',k,'белое');
end.