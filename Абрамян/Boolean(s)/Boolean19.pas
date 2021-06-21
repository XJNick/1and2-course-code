uses crt;
var
   x, y, z: integer;
   l:Boolean;
begin
   write('Введите 3 числа, что бы 2 из них были взаимно противоположны = ');
   read(x, y, z);
   l := ((x=y * (-1)) or (y=z * (-1)) or (z=x * (-1)));
   if l=True then
   writeln('Верно = ',l)
   else
   writeln('Не соответствует условию = ',l);
end.   