uses crt;
var
   a, b, c, d:real;
begin   
   write('������� ���������� � ���������� = ');
   read(a);
   write('������� ���������� � ����� = ');
   read(b);
   c := a*1000;
   d := b*0.305;
   if c>d then
   writeln(a,' ���������� ������, ��� ',b,' �����')
   else
   writeln(a,' ���������� ������, ��� ',b,' �����')
end.   