uses crt;
var
   n: 1..5;
   o, m: real;

begin
   write('Type number 1-5: ');
   read(n);
   if (n > 5) or (n < 0) then
   begin
      while (n > 7) or (n < 0) do
      begin
         write('Type number 1-5: ');
         read(n);
      end;
   end
   else
      write('Type anythink number: ');
   read(o);
   case n of
      1: m := o / 10; 
      2: m := o * 1000;
      3: m := o;
      4: m := o / 1000;
      5: m := o / 100;
   end;
   writeln(m:0);
end.