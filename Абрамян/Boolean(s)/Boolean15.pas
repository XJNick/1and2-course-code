uses crt;
var
  a, b, c:integer;
  l:Boolean;
begin
  write('������� ����� 2 ������������� �����: ');
  readln(a, b, c);
  l := ((a<=0) and (b>0) and (c>0)) or
       ((a>0) and (b<=0) and (c>0)) or
       ((a>0) and (b>0) and (c<=0));
  if l=False then
  writeln('�� ����� ������������ �������� = ',l)
  else
  writeln('����� = ',l);
end.  