uses crt;
var
   x, y integer;
   l : Boolean;
begin
   write('Введите две координаты точки, что бы они лежали в IV четверти = ');
   read(x, y);
   l := (x>0) and (y<0);
   if l = true then
   writeln('Верно = ',l)
   else
   writeln('Введенные данные не соответствуют условию = ',l);
end.