uses crt;
var
   st, nd, rez:byte;
begin
   st := 0;
   nd := 0;
   for i:byte := 1 to 9 do
      begin
         st := st+1;
         nd := 0;
         for k:byte := 1 to 9 do
            begin
               nd := nd+1;
               rez := st+nd;
               writeln(st,'+',nd,'=',rez);
            end;
      writeln;            
      end;
end.