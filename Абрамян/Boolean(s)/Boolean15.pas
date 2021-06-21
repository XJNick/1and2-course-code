uses crt;
var
  a, b, c:integer;
  l:Boolean;
begin
  write('Введите ровно 2 положительных числа: ');
  readln(a, b, c);
  l := ((a<=0) and (b>0) and (c>0)) or
       ((a>0) and (b<=0) and (c>0)) or
       ((a>0) and (b>0) and (c<=0));
  if l=False then
  writeln('Вы ввели недопустимые значения = ',l)
  else
  writeln('Верно = ',l);
end.  