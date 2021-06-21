uses crt;
const n=8;
type 
   matrix = array[1..n, 1..n] of real;
   vector = array[1..n] of real;
var
   x, y, z, u, an_a, an_b, an_c, an_b2: vector;
   a, b, c: matrix;
   i, k: byte;

function mult(m:matrix; v:vector;  var uu:vector):real;
begin
   for i:byte := 1 to n do
      for j:byte := 1 to n do
      begin
         uu[i] :=uu[i] + m[i, j]*v[j];
      end;
end;

procedure arr_fill;
begin
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to n do
      begin
         a[i, j] := (random(21) - 10)+1/(random(10)+1);
         b[i, j] := (random(21) - 10)+1/(random(10)+1);
         c[i, j] := (random(21) - 10)+1/(random(10)+1);
      end;
      x[i] := (random(21) - 10)+1/(random(10)+1);
      y[i] := (random(21) - 10)+1/(random(10)+1);
      z[i] := (random(21) - 10)+1/(random(10)+1);
   end;
end;

procedure print(var m:matrix; var v:vector);
begin
   inc(k);
   writeln(k,'ая матрица');
   for i:byte := 1 to n do
   begin
      for j:byte := 1 to n do
         write(m[i, j]:9:3);
      writeln;
   end;
   writeln(k,'й вектор');
   for i:byte := 1 to n do
      write(v[i]:9:3);
   writeln;
   writeln;
end;

begin
   arr_fill;
   mult(a, x, an_a);
   mult(b, y, an_b);
   mult(c, z, an_c);
   mult(b, x, an_b2);

   print(a, x);
   print(b, y);
   print(c, z);
   writeln('u = Ax + By - Cz + Bx');
   for i := 1 to n do
   begin
      u[i] := an_a[i]+an_b[i]-an_c[i]+an_b2[i]; 
      writeln('u[', i, ']=',  u[i]:9:3);
   end;
end.   