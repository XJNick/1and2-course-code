program Home_work;

var
    k: integer;                {1� ������}
    a, b, c, D: integer;       {2� ������}
    t, o, r, m: integer;       {3� ������}
    x, y: shortint;            {3� ������}
begin
{������ �1}
writeln('�������: k ������� �� 7 ��� �������');
writeln('������� ����� ');
readln(k);
if k mod 7>0 then
writeln('����� ������� �� 7 � ��������(false)')
else
writeln('����� ������� �� 7 ��� �������(true)');

  {������ �2}
  writeln('�������: ��������� ���� ax^2 + bx + c = 0 �� ����� ������');
  writeln('������ a, b, c ');
  readln(a, b, c);
  D := b*b - 4*a*c;
  if D<0 then
  writeln('������ ���(true)')
  else
  writeln('��������� ����� �������(false)');
    
    {������ �3}
    writeln('�������: �����(�, �) ����� ��� ����������');
    x := -1;
    y := 0;
    writeln('������� ������ ');
    read(r);
    writeln('������� t, o ');
    read(t, o);
    m := sqr(x-t) + sqr(y-o);
    if m > sqr(r) then
    write('����� ��� ����������(true)')
    else
    write('����� � ����������(false)');
end.