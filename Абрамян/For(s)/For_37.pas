uses crt;
var n , m, c, sum:integer;
   
begin
   write('');
   read(n);
   for i:byte := 1 to n do
      begin
        m:=1;
         for k:byte := 1 to i do
            m:=m*i;
        sum:=sum+m;
   end;
   writeln(sum);
end.