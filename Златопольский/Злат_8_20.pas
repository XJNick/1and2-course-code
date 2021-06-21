uses crt;
var
   d, prew_d,
   all1, all2, all3,
   all_date1, all_date2, all_date3, all_date4, all_date5,
   prew_sum, this_sum: integer;
   date_max, date_md: 1..5;
   what_max: string;
   x, y: byte;
begin
   all1 := 0;
   all2 := 0;
   all3 := 0;
   all_date1 := 0;
   all_date2 := 0;
   all_date3 := 0;
   all_date4 := 0;
   all_date5 := 0;

   gotoxy(27, 1);
      write('Число');
   gotoxy(2, 2);
      write('Магазин');
   gotoxy(50, 2);
      write('Доход за день');
   gotoxy(65, 2);
      write('Лучший день');
   gotoxy(3,6);
      write('Сумма');
    
   x := 5;
   y := 3;
   for i:byte := 1 to 3 do
   begin
      gotoxy(x, y);
      write(i);
      inc(y);
   end;
   
   x := 15;
   y := 2;
   for i:byte := 1 to 5 do
   begin
      gotoxy(x, y);
      write(i);
      x := x+7;
   end;
   
   for i:byte := 1 to 3 do
   begin
      date_md := 0;
      prew_d := -1;
   
      inc(y);
      x := 15;
      for j:byte := 1 to 5 do
      begin
         gotoxy(x, y);
            read(d);
         
         case i of
            1 : all1 := all1 + d;
            2 : all2 := all2 + d;
            3 : all3 := all3 + d;
         end;
         gotoxy(55, y);
            case i of
               1 : write(all1);
               2 : write(all2);
               3 : write(all3);
            end;
            
            case j of
               1 : begin all_date1 := all_date1+d; this_sum := all_date1; end;
               2 : begin all_date2 := all_date2+d; this_sum := all_date2; end;
               3 : begin all_date3 := all_date3+d; this_sum := all_date3; end;
               4 : begin all_date4 := all_date4+d; this_sum := all_date4; end;
               5 : begin all_date5 := all_date5+d; this_sum := all_date5; end;
            end;
            
            gotoxy(x, 6);
               case j of
                  1 : write(all_date1);
                  2 : write(all_date2); 
                  3 : write(all_date3); 
                  4 : write(all_date4);
                  5 : write(all_date5);
               end;
            x := x+7;
         
         if d>prew_d then
         begin
            prew_d := d;
            date_md := j;
            gotoxy(65, y);
               write(date_md);
         end;
         
         if prew_sum<this_sum then
         begin
            date_max := j;
            prew_sum := this_sum;
         end;
         
         gotoxy(65, 6);
            write(date_max);
      end;
   end;
   
   if (all1>all2) and (all1>all3) then
      what_max:= ' первого '     
   else if (all2>all1) and (all2>all3) then
         what_max := ' второго '
        else
            what_max := ' третьего ';
            
   gotoxy(1, 10);
      write('У', what_max,'магазина наибольший общий доход');
   gotoxy(1, 15)
end.