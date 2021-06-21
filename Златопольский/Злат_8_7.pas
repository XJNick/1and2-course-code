uses crt;
var
   st, nd, rez:byte;
begin
   nd := 0;
   for i:byte := 1 to 9 do
      begin
         nd := nd+1;
         st := 0;
         for k:byte := 1 to 9 do
            begin
               st := st+1;
               rez := st*nd;
               writeln(st,'x',nd,'=',rez);
            end;
      writeln;            
      end;
end.