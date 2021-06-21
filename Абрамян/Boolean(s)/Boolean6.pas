uses crt;
var
   A, B, C:integer;
   l:Boolean;
   k:string;
begin
   write('¬ведите A, B, C, что бы неравенство A<B<C было справедливым = ');
   readln(A, B, C);
   l := (A<B) and (B<C);
   if not l then
   k := 'не ';
   writeln('«адача ',k,'соответствует условию ',l);
end.