uses crt;
var
   k:string;
   x1, x2, y1, y2:1..8;s
   l:Boolean;
begin
   write('������� ��������� ���������� ���� ���� => ');
   read(x1, y1);
   write('������� �������� ���������� ���� ���� => ');
   readln(x2, y2);
   l:=((abs(x1-x2)=2) and (abs(y1-y2)=1)) or ((abs(x1-x2)=1) and (abs(y1-y2)=2)) ;
   if not l then
   k := '�� ';
   writeln('����, ��� ���������� �� �����, ',k,'����� ������������� �� �������� �����������');
end.