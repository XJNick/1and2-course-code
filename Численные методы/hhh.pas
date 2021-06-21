uses GraphABC;
var
   g : integer;
begin
   SetWindowSize(400, 400); 
   LockDrawing;
   
  // circle(random(40, 360), random(40, 360), 20);
   
   for i:byte := 1 to 255 do
   begin
      g := random(-1, 1);
      circle(i*g, i*g, 20);
      redraw;
   end;
end.