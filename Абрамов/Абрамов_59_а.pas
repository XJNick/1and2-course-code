uses crt;
var
   x, y:real;
   r:shortint;
   w:string;
begin
   r := 1;
   write('������� ���������� �����(x, y) = ');
   read(x, y);
   if x*x + y*y = r*r then
    w := '�� ';
      if (sqr(x) + sqr(y) > sqr(r)) then
         w := '��� '
      else
         w := '� ';
   writeln('����� � ������������ (',x,',',y,') ��������� ',w,'����������');
end.