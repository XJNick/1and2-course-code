uses crt;
var
   a, b, c:integer;
   l:Boolean;
   k:string;
begin
   write('������� ������� ��������������� ������������ (a, b, c) => ');
   read(a, b, c);
   l:= (a=b) and (b=c) and (a=c);
   if not l then
   k := '�� ';
   writeln('����������� abc ',k,'��������������');
end.