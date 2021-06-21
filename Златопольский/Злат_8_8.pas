uses crt;
var
   st, nd, rez:byte;
   h:string;
begin
   st := 0;
   nd := 0;
   h := ' ';
   for i:byte := 1 to 9 do
      begin
         st := st+1;
         nd := 0;
         h := h+' ';
         for k:byte := 1 to 9 do
            begin
               nd := nd+1;
               rez := st*nd;
               write(st,'x',nd,'=',rez, '  ');
            end;
      writeln;            
      end;
end.