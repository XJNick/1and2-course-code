uses crt;
var
   n:integer;
   a1, a2, a3, a4:shortint;
   r:Boolean;
begin
   write('������� ����� 4� ������� �����,' #13#10
   '��� �� ��� �������� ��������� ������ ������ � �������� = ');
   read(n);
   a1 := n div 1000;
   a2 := n div 100 mod 10;
   a3 := n div 10 mod 10;
   a4 := n mod 10;
   r := (a1=a4) and (a2=a3);
   if r=False then
   writeln('�� ������������� ������� = ',r)
   else
   writeln('����� = ',r);
end.