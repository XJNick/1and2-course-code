uses crt;
const
   n = 3;
var
   x, y, b:array[1..10] of real;
   arr: array[1..n, 1..n] of real;
   k, kk, i, j, sz: byte;
   fsum, hx: real;
   c: array[1..3] of real;
procedure input;
var
   f: text;
   i: byte;
begin
   assign(f, 'input.txt');
   reset(f);
   i := 0;
   while not eof(f) do
   begin
      inc(i);
      read(f, x[i]);
      read(f, y[i]);
      fsum := fsum + y[i];
   end;
   sz := i;
   
   close(f);
      
end;

function sigma(kk:byte):real;
var
   sum: real;
   i: byte;
   function mult(x:real; kk: byte): real;
   var 
      i: byte;
      mt: real;
   begin
      mt := 1;
      for i := 1 to kk do
         mt := mt*x;
      mult := mt;
   end;
begin
   sum := 0;
   for i := 1 to sz do
      sum := sum+mult(x[i], kk);
   sigma := sum;
end;

procedure Gauss;
var   
   i , k , j :integer;
   r , g : real;
begin
   for k := 1 to n do {прямой ход}
  begin
    for j := k + 1 to n do
    begin
      r := arr[j, k] / arr[k, k];
      for i := k to n do
      begin
        arr[j, i] := arr[j, i] - r * arr[k, i];
      end;
      b[j] := b[j] - r * b[k];
    end;
  end;
  for k := n downto 1 do {обратный ход}
  begin
    r := 0;
    for j := k + 1 to n do
    begin
      g := arr[k, j] * c[j];
      r := r + g;
    end;
    c[k] := (b[k] - r) / arr[k, k];
  end;
end;

begin
   input;

   k := n+1;   
   for i := 1 to n do
   begin
      kk := k;
      for j := 1 to n do
      begin
         arr[i, j] := sigma(kk);
         dec(kk);
      end;
      b[i] := sigma(n-i)*fsum;
      dec(k);
   end;
   
   for i := 1 to n do
   begin
      for j := 1 to n do
         write(arr[i, j]:5:1,' ');
      write(b[i]:5:1);
      writeln;
   end;
   Gauss;
   writeln;
   for i := 1 to n do
   begin
      for j := 1 to n do
         write(arr[i, j]:5:1,' ');
      write(b[i]:5:1);
      writeln;
   end;
   writeln;
   writeln(c[1]:5:2);
   writeln(c[2]:5:2);
   writeln(c[3]:5:2);
   read(hx);
   hx := hx*hx*c[1] + c[2]*hx + c[3];
   writeln(hx);
end.