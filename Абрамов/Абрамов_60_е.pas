uses crt;
var
   u, x, y:real;
   l:Boolean;
begin
   write('������� ���������� �����(x, y) = ');
   read(x, y);
   l :=(sqr(x)+sqr(y-1)<=1) and not((y>=-x) and (y<=x));
   if l then
   u := sqrt(abs(x*x-1))
   else
   u := x+y;
   //writeln(l);
   writeln('��������� �����(',x,',',y,') � 1/4 ����� - ',l,', ������ u = ',u);
end.