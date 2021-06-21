uses crt;
var
   A, B, C:integer;
   l:Boolean;
   k:string;
begin
   write('¬ведите A, B, C, что бы B было между A и C = ');
   readln(A, B, C);
   l := ((A<B) and (B<C)) or ((A>B) and (B>C));
   if not l then
   k := ' не ';
   writeln('„исло ',B,k, ' находитс€ между ',A, ' и ',C);
end.