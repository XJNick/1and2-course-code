uses crt;
var
   u, x, y:real;
   l:Boolean;
begin
   write('������� ���������� �����(x, y) = ');
   read(x, y);
   l := (sqr(x)+sqr(y-1)<=1) and (y<=1-x*x);
   if l then
   u := x-y
   else
   u := x*y+7;
   //writeln(l);
   writeln('��������� �����(',x,',',y,') � ���� - ',l,', ������ u = ',u);
end.