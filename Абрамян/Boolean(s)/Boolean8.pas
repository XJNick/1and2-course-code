uses crt;
var
   A, B, C:integer;
   l:Boolean;
   k:string;
begin
   write('������� A, B, C, ��� �� B ���� ����� A � C = ');
   readln(A, B, C);
   l := ((A<B) and (B<C)) or ((A>B) and (B>C));
   if not l then
   k := ' �� ';
   writeln('����� ',B,k, ' ��������� ����� ',A, ' � ',C);
end.