uses crt;
var
   k:string;
   x, x1, y, y1:1..8;
   l:Boolean;
begin
   write('������� ���������� ����1 (1-8) => ');
   read(x, y);
   write('������� ���������� ����2 (1-8) => ');
   readln(x1, y1);
   l:=((x+y) mod 2) = ((x1+y1) mod 2);
   if not l then
   k := '�� ';
   writeln('����� �����, ��� ���������� �� �����, ',k,'���������');
end.