uses crt;
var
   x, y, z: integer;
   l:Boolean;
begin
   write('������� 3 �����, ��� �� 2 �� ��� ��������� = ');
   read(x, y, z);
   l :=((x=y) and (x=z)) or ((y=z) and (y=x)) or ((z=x) and (z=y));
   if l=true then
   writeln('����� = ',l)
   else
   writeln('�� ������������� ������� = ',l);
end.   