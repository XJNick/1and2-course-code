uses crt;
var
   n, ku, oc:byte;
   sru, sr1, sr2, sr3:real;
   sum, x, y:integer;
   arr:array[1..100] of integer;
begin
//   read(n);
//   for i:byte := 1 to n do
//      read(arr[i]);
//   for i:byte := 1 to n do
//      sum := sum + arr[i];
//   writeln(sum);  
   write('Кол-во учеников: ');
   readln(ku);
   clrscr;
   x := 12;
   y := 1;
   gotoxy(x, y);
   write('Предмет');
   x := 2;
   y := 2;
   gotoxy(x,y);
   write('Ученик');
   x := 13;
   gotoxy(x,y);
   writeln('1 2 3');
   x := 2;
   for i:byte := 1 to ku do
   begin
      sru := 0;
      x := 2;
      y := y+1;
      gotoxy(x, y);
      writeln('Ученик ',i);
      for k:byte := 1 to 3 do
      begin
         x := 13;
         gotoxy(x, y);
         read(oc);
         sru := sru+oc;
         case k of 
            1:sr1 := sr1+oc;
            2:sr2 := sr2+oc;
            3:sr3 := sr3+oc;
         end;
      end;
      x := 20;
      gotoxy(x, y);
      write(sru/3:3:1);         
   end;
   x := 2;
   y:=y+1;
   gotoxy(x, y);
   write('Ср. бал:');
   x := 13;
   gotoxy(x, y);
   write(sr1,' ', sr2,' ', sr3);
   y := y+1;
   x := 0;
   gotoxy(x, y);
   writeln;
end.   