program homeWork2;

var
    x, y, z: real;
    year: integer;
begin
{a, b}
writeln('������� x ');
readln(x);
writeln('����������� �� � ������� [0; 1]?');
if ((x>=0) and (x<=1)) then
writeln('x ����������� ������� [0; 1]')                 {a}
else
writeln('x �� ����������� ������� [0; 1]');             {b}
writeln('');
  {c, d}
  writeln('����������� �� � ������� [2, 5] ��� [1; -1]?');
  if ((x>=2) and (x<=5)) or ((x>=-1) and (x<=1)) then 
  writeln('x ����������� [2; 5] ��� [1; -1]')           {c}
  else
  writeln('x �� ����������� [2; 5] ��� [1; -1]');       {d}
  writeln('');
    {e, f, g, h, i}
    writeln('������� y, z ');
    readln(y, z);
    writeln('������������ �� ��� �����?');
    if (x>0) and (y>0) and (z>0) then
    writeln('��')                                       {e}
    else
    writeln('���');
    writeln('');
    writeln('���� ��� ��������� ����� ������������?');
    if (x>0) or (y>0) or (z>0) then
    writeln('��')    {f}
    else 
    writeln('���');
    writeln('');
    if (x<0) and (y<0) and (z<0) then
    writeln('�� ���� ����� �� �������� �������������'); {g}
    if ((x<0) and (y<0) and (z<0)) then
    writeln('�� ���� ����� �� ������������');           {h}
    writeln('');
    writeln('����� ���� ������������� �����');
    if ((x>0) and (y<0) and (z<0)) or
       ((x<0) and (y>0) and (z<0)) or
       ((x<0) and (y<0) and (z>0)) then
    writeln('������ ���� ����� ������������')          {i}
    else 
    writeln('����� ���');
    writeln('');
      {j}
      writeln('������� ��� ');
      readln(year);
      if (year mod 4 <> 0) or (year mod 100 = 0) and (year mod 400 <> 0) then 
      writeln('�������')
      else 
      writeln('����������');
      
      
end.