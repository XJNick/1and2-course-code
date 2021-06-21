uses Crt;

function main(x: real): real; {�������� �������}
begin
   main:= sqr(x) * sqr(x) + 2*sqr(x) - 8*x - 4;
end;

function der(x:real): real; {����������� �� �������� �������}
begin
   der:=4*(sqr(x)*x + x - 2);
end;
var
   x, a, b, eps: real;
   i:integer;
begin
   writeln('����� ���� ������� �������� 4�� ������� ������� �������');
   writeln('�������: x^4+2x^2-8x-4');
   write('������� ��������� �������� ����������: ');
   read(eps);
   
   i := 0;

   while abs(main(x))>eps do
   begin
      inc(i);
      x:=x-main(x)/der(x);
      writeln ('  ',i, '  ', 'x=',x:0:5,' f(x)=',main(x):0:5);
   end;
   writeln;
   writeln('� �����: ', 'x=',x:0:5,' f(x)=',main(x):0:10);
end.