uses crt;
var
   a, b:real;
begin   
   write('������� ������ ����� = ');
   read(a);
   write('������� ������ ����� = ');
   read(b);
   if a>b then
   writeln('������������ ����� = ',a,', ����������� = ',b)
   else
   writeln('������������ ����� = ',b,', ����������� = ',a)
end.   