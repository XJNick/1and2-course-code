uses crt;
var
   k:string;
   x1, x2, y1, y2:1..8;
   l:Boolean;
begin
   write('Введите начальные координаты хода ферзя => ');
   read(x1, y1);
   write('Введите конечные координаты хода ферзя => ');
   readln(x2, y2);
   l:=((x1=x2) or (y1=y2) or (abs(x1-x2)=abs(y1-y2)));
   if not l then
   k := 'не ';
   writeln('Ферзь, чьи координаты Вы ввели, ',k,'может переместиться по заданным координатам');
end.