uses crt;
var
   k:string;
   x1, x2, y1, y2:1..8;
   l:Boolean;
begin
   write('������� ��������� ���������� ���� ����� => ');
   read(x1, y1);
   write('������� �������� ���������� ���� ����� => ');
   readln(x2, y2);
   l:=((x1=x2) or (y1=y2) or (abs(x1-x2)=abs(y1-y2)));
   if not l then
   k := '�� ';
   writeln('�����, ��� ���������� �� �����, ',k,'����� ������������� �� �������� �����������');
end.