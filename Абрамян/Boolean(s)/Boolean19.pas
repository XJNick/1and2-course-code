uses crt;
var
   x, y, z: integer;
   l:Boolean;
begin
   write('������� 3 �����, ��� �� 2 �� ��� ���� ������� �������������� = ');
   read(x, y, z);
   l := ((x=y * (-1)) or (y=z * (-1)) or (z=x * (-1)));
   if l=True then
   writeln('����� = ',l)
   else
   writeln('�� ������������� ������� = ',l);
end.   