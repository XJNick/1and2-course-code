uses crt;

function main(x:real):real;
begin
   main := sqr(x) * sqr(x) + 2*sqr(x) - 8*x - 4; {������� 4�� �������}
end;  
function der(x:real):real;
begin
   der := 4*(x*x*x + x - 2); {����������� �� ��������}
   //x*x*x + 4*x-8;
end;   
   
var
   a, b, x, xn, eps: real;
   i: integer;
begin
   writeln('����� ���� ������� �������� 4�� ������� ������� �������');
   writeln('�������: x^4+2x^2-8x-4');
   writeln('x0 �������������� = 1');
   writeln;
   write('������� ��������� �������� ����������: ');
   read(eps);
   writeln;
   
   a := 1;
   
   a := abs(a-b); {������� �������� � �, ����� ���������� �� ����������}
   i := 1;
   x := a;
   
   writeln('  �����', '�':15, '�������':20);
   xn := main(x);
   while (xn-x>eps) do
   begin
      x := xn;
      x := x-(main(x)/der(x));
      inc(i);
      if main(xn) = 0 then 
         x := xn;
      writeln(i:5, '  ', x:20:7, '      ',main(x):0:10);
   end;
   writeln;
   write('��� x=', x:7);
   writeln(' ������� = ', main(x):0:10);
   writeln;
end.