uses crt;
var
   a, b, c:integer;
   l:Boolean;
   k:string;
begin
   write('Введите стороны равнобедренного треугольника (a, b, c) => ');
   read(a, b, c);
   l:= (a=b) and (a <> c);
   if not l then
   k := 'не ';
   writeln('Треугольник abc ',k,'равнобедренный');
end.