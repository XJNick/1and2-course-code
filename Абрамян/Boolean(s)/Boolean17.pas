uses crt;
var
  n, n1:integer;
  i:shortint;
  w:string;
begin
  w := '��������� ���� ����� �� ������������� �������';
  write('������� ����������� �������� ����� = ');
  read(n);
  n1 := n;
  i := 0;
  repeat
  n := n div 10;
  i := i+1;
  until
  n=0;
  if i<>3 then
  writeln(w);
  n1 := n1 mod 2;
  if (n1=2) or (n1=1) then
  writeln('��������� ���� ����� ������������� �������')
  else
  writeln(w);
end.  