uses crt;
var
   a, b, c ,D : integer;
   l : Boolean;
begin
   write('������� a, b , c (a<>0) = ');
   read(a, b, c);
   D := b*b + 4*a*c;
   l :=((D>0) or (D=0)) and (a<>0);
   if l = true then
   writeln('����� = ',l)
   else
   writeln('��������� ������ �� ������������� ������� = ',l);
end.