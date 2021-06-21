uses crt;
var
   n, e:byte;
   p_num, n_num:integer;
begin
   write('');
   read(n);
   read(p_num);
   for i:byte := 2 to n do
   begin
      read(n_num);
      if n_num>p_num then
      begin
         e := i;
         break;
      end
      else
         e := 0
   end;
   writeln(e);
end.