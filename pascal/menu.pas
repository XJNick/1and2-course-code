uses crt;
type
   goods = (bread, butter,  milk, meat, fish, salt, chease, sausage, sugar, tea, coffe);
   gds = set of goods;
var
   m, m1, m2, m3, i: gds;
begin
   m := [];
   m1 := [meat.. salt, chease..sugar];
   m2 := [bread..milk];
   m3 := [tea, coffe, sausage, bread];
//   writeln(m[1]);
//   writeln(m[2]);
//   writeln(m[3]);
   TextBackground(5);
   ClrScr;
   gotoxy(5, 2);
   writeln('Shop ¹1');
end. 