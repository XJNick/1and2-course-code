uses crt;
var
   a, b, c, d:real;
const
   pi = 3.14;
begin   
   write('������� ������ ����� = ');
   read(a);
   write('������� ������� �������� = ');
   read(b);
   c := pi * a * a;
   d := b*b;
   if c>d then
   writeln('������� �����(',c,') ������, ��� ������� ��������(',d,')')
   else
   writeln('������� ��������(',d,') ������, ��� ������� �����(',c,')')
end.   