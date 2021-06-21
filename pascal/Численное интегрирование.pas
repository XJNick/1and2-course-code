uses crt;
const
   n1 = 10;
   a = -2;
   b = 4;
   eps = 0.001;

var 
   h, s, s1, x:real;
   n, i:integer;
   choice:byte;
function func(x:real): real;
begin
   func := 8+2*x-x*x;
end;

procedure left;
begin
   n := n1;
   s := 0;
   repeat;
      s1 := s;
      s := 0;
      h := (b-a)/n;
      x := a;
      for i:integer := 1 to n do
      begin
         s := s+func(x)*h;
         x := x+h;
      end;
         n := n*2;
   until abs(s-s1) < eps;
   writeln('  �������� �� �������, ������� ����� ��������������� = ', s:0:2);
   writeln('  �������� ���-�� ���������: ', n:0);
   writeln;
end;

procedure right;
begin
   n := n1;
   s := 0;
   repeat
      s1 := s;
      s := 0;
      h := (b-a)/n;
      x := a+h;
      for i:integer := 1 to n do
      begin
         s := s+func(x)*h;
         x := x+h;
      end;
         n := n*2;
   until abs(s-s1) < eps;
   writeln('  �������� �� �������, ������� ������ ��������������� = ', s:0:2);
   writeln('  �������� ���-�� ���������: ', n:0);
   writeln;
end;

procedure center;
begin
   n := n1;
   repeat
      s1 := s;
      s := 0;
      h := (b-a)/n;
      x := a+h/2;
      for i:integer := 1 to n do
      begin
         s := s+func(x+h/2)*h;
         x := x+h;
      end;
         n := n*2;
   until abs(s-s1) < eps;
   writeln('  �������� �� �������, ������� ����������� ��������������� = ', s:0:2);
   writeln('  �������� ���-�� ���������: ', n:0);
   writeln;
end;

procedure trapezium;
begin
   n := n1;
   repeat
      s1 := s;
      s := (func(a)+func(b))/2;
      h := (b-a)/n;
      x := a;
      for i:integer := 1 to n-1 do
      begin
         x := x+h;
         s := s+(func(x));
      end;
      s := s*h;
         n := n*2;
   until abs(s-s1) < eps;
   writeln('  �������� �� �������, ������� �������� = ', s:0:2);
   writeln('  �������� ���-�� ���������: ', n:0);
   writeln;
end;

begin   
   writeln('������� ����� ��������, ���: ');
   writeln('(1) ����� ����� ���������������');
   writeln('(2) ����� ������ ���������������');
   writeln('(3) ����� ����������� ���������������');
   writeln('(4) ����� ��������');
   writeln('(5) ��� ������');
   read(choice);
   clrscr;
   
   writeln;
   writeln('  �������: 8+2*x-x*x');
   writeln('  E = : ', eps);
   writeln('  ������� ������ �������������� = ', a);
   writeln('  ������� ������ �������������� = ', b);
   writeln;
   
   case choice of
      1: left;
      2: right;
      3: center;
      4: trapezium;
      5: begin
            left;
            right;
            center;
            trapezium;
         end;
   end;
end.