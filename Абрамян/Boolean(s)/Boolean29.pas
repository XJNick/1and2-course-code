uses crt;
var
   x, y, x1, y1, x2, y2:integer;
   l:Boolean;
begin
   write('������� ���������� ����� (x, y) = ');
   read(x, y);
   write('������� ���������� �������������� (x1, x2, y1, y2) = ');
   read(x1, x2, y1, y2);
   l := (x>x1) and (x<x2)and(y>y1) and (y<y2);
   writeln(l)
end.