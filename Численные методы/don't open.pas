uses GraphABC; 
var
   n:byte; 
begin
  SetWindowSize(600, 600);
  LockDrawing;
  
  read(n);
  
  SetPenWidth(4);
  circle(200, 150, 50);
  circle(300, 150, 50);
  SetPenColor(clWhite);
   for i:byte := 100 to 200 do
      Line(200, i, 300, i);
  SetPenColor(clBlack);
  Line(199, 100, 301, 100);
  Line(199, 200, 301, 200);
  
  for j:byte := 1 to n do
      begin
      
      for i:integer := 200 to 300 do
      begin
         SetPenColor(clBlack);
         circle(i, 150, 40);
         
         RedRaw;
      end;
      
//      SetPenColor(clWhite);
//      circle(230, 130, 6);
//      circle(235, 125, 3);
//      circle(220, 135, 8);
//      circle(210, 127, 4);
      
      for i:integer := 300 downto 200 do
      begin
         SetPenColor(clWhite);
         circle(i, 150, 42);
         SetPenColor(clBlack);
         circle(i, 150, 40);
         RedRaw;
      end;
  end;
  
end.