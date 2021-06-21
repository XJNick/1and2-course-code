uses crt;
var
   x, y, z: integer;
   l:Boolean;
begin
   write('Введите 3 числа, что бы 2 из них совпадало = ');
   read(x, y, z);
   l :=((x=y) and (x=z)) or ((y=z) and (y=x)) or ((z=x) and (z=y));
   if l=true then
   writeln('Верно = ',l)
   else
   writeln('Не соответствует условию = ',l);
end.   