uses crt;
var
   a, b, c, d:real;
begin   
   write('������� �������� ��/� = ');
   read(a);
   write('������� �������� �/� = ');
   read(b);
   c := a*100/3600;
   d := b;
   if c>d then
   writeln(a,' ��/� ������, ��� ',b,' �/�')
   else
   writeln(a,' ��/� ������, ��� ',b,' �/�')
end.   