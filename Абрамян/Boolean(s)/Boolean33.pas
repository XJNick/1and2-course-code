uses crt;
var
   a, b, c:integer;
   l:Boolean;
   k:string;
begin
   write('������� ������� ������������� ������������ (a, b, c) => ');
   read(a, b, c);
   l:=(a<b+c) and (b<a+c) and (c<a+b);
   if not l then
   k := '�� ';
   writeln('����������� abc ',k,'����������');
end.