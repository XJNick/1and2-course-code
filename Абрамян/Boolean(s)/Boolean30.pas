uses crt;
var
   a, b, c:integer;
   l:Boolean;
   k:string;
begin
   write('Введите стороны равностороннего треугольника (a, b, c) => ');
   read(a, b, c);
   l:= (a=b) and (b=c) and (a=c);
   if not l then
   k := 'не ';
   writeln('Треугольник abc ',k,'равносторонний');
end.