uses crt;
var
  n, n1:integer;
  w:string;
begin
  w := '��������� ���� ����� �� ������������� �������';
  write('������� ���������� ������ ����� = ');
  read(n);
  n1 := n;
  n := n div 10;
  if n=0 then
  writeln(w);
  n := n div 10;
  if n>0 then
  writeln(w);
  n1 := n1 mod 2;
  if n1=1 then 
  writeln(w)
  else writeln('��������� ����� ������������� �������');
end.  