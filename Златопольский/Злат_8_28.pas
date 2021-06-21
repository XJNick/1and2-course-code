var
  i, j, k: integer;
  
begin
  for i := 200 to 500 do
  begin
    k := 0;
    for j := 1 to i do
      if (i mod j=0)and (k<7) then
         k := k+1;
    if k=6 then write(' ', i);  
  end;
  writeln;
end.