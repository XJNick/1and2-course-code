uses crt;
var
   x, y integer;
   l : Boolean;
begin
   write('������� ��� ���������� �����, ��� �� ��� ������ �� II ��� III �������� = ');
   read(x, y);
   l := ((x>0) and (y>0) or ((x<0) and (y<0));
   if l = true then
   writeln('����� = ',l)
   else
   writeln('��������� ������ �� ������������� ������� = ',l);
end.