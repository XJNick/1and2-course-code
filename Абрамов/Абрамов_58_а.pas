//uses crt;
var
   x, y:real;
   r:1..1;
begin
   write('������� ���������� �����(x, y) = ');
   read(x, y);
   if x*x + y*y = r*r then
    writeln('����� � ������������ (',x,',',y,') ��������� �� ����������')
   else 
      if x*x + y*y < r*r then
         writeln('����� � ������������ (',x,',',y,') ��������� � ����������')
      else
         writeln('����� � ������������ (',x,',',y,') ��������� ��� ����������');
end.