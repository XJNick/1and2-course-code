var
  i, j, k: integer;
  
begin
  for i := 2 to 300 do
  begin
    k := 0;
    for j := 2 to i do
      if (i mod j=0)and (k<6) then
         k := k+1;
    if k = 5 then write(' ', i);  
  end
end.