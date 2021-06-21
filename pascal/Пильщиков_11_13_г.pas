uses crt;
const n=40;
type 
   vector = array[1..n] of integer;
var
   x, y, z: vector;
   i: byte;
   x_max, z_max: integer;
   x_id, z_id: byte;
   pos_y, chkd: boolean;
   choise: 1..2;
   f:text;
   
procedure arr_fill;
begin
   for i:byte := 1 to n do
   begin
      x[i] := random(21) - 10;
      y[i] := random(21) - 10;
      z[i] := random(21) - 10;
   end;
end;

procedure arr_load;
begin
   assign(f, 'case1.txt');
   reset(f);
      for i:byte := 1 to n do
         read(f, x[i]);
      for i:byte := 1 to n do
         read(f, y[i]);
      for i:byte := 1 to n do
         read(f, z[i]);
   close(f);
end;

procedure er;
begin
   x_max := -n-1;
   z_max := -n-1;
   for i:byte := 1 to n do
   begin
      if x_max<x[i] then
      begin
         x_max := x[i];
         x_id := i;
      end;
      
      if z_max<z[i] then
      begin
         z_max := z[i];
         z_id := i;
      end;
      
      pos_y := pos_y or (y[i]>0);
   end;
end;

begin
   writeln('Выберите способ загрузки массива, где ');
   writeln('1) заполнение функцией random');
   writeln('2) загрузки контрольного примера из файла');
   read(choise);
   case choise of 
      1 : arr_fill;
      2 : arr_load;
   end;
   er;
   chkd := true;
   
   if ((x_max=10) and (x_id<=n/2) and not(pos_y)) then 
      for i := 1 to z_id-1 do
         z[i] := sqr(z[i])*z[i];
         
   for i := 1 to n do
   begin
      textcolor(yellow);
      if i>z_id then
         textcolor(LightGray);
      if (z[i] = z_max) and chkd then
      begin
         textcolor(green);
         write(z[i]:6);
         chkd := false;
      end
      else
         write(z[i]:6);
   end;
   writeln;
   textcolor(LightGray);
end.