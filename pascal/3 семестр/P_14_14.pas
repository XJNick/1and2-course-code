const n = 15;
type 
   letters = set of 'a'..'z';
var
   A: letters;
   c: char;
   i: integer;
begin
   A := [];
   i := 1;
   while i<n do
   begin
      read(c);
      A := A+[c];
      inc(i);
   end;
   
   for c := 'a' to 'z' do
      if c in A then 
      begin
         write(c);
         //A := A-[c];
      end;
   
end.