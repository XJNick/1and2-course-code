uses crt;
var
   A, B, C:integer;
   l:Boolean;
   k:string;
begin
   write('������� A, B, C, ��� �� ����������� A<B<C ���� ������������ = ');
   readln(A, B, C);
   l := (A<B) and (B<C);
   if not l then
   k := '�� ';
   writeln('������ ',k,'������������� ������� ',l);
end.