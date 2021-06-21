uses crt;
var
   n: 1..7;
   s: string;
begin
   write('Type number 1-7: ');
   read(n);
   if (n>7) or (n<0) then
   begin
      while (n>7) or (n<0) do
         begin
            write('Type number 1-7: ');
            read(n);
         end;
   end
   else
   Case n of
      1:s:='monday';
      2:s:='Tuesday';
      3:s:='Wednesday';
      4:s:='Thursday';
      5:s:='Friday';
      6:s:='Saturday';
      7:s:='Sunday';
   end;
   writeln(s);
end.