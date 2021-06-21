uses crt;
var
   s, s1, s2: string;
   id: byte;
begin
     write('¬ведите преобразуемую строку: ');
     readln(s);
     write('¬ведите замен€емую строку: ');
     readln(s1);
     write('¬ведите замен€ющую строку: ');
     readln(s2);
     
     id := pos(s1, s);
     delete(s, id, length(s1));
     insert(s2, s, 1);
     writeln('ѕреобразованна€ строка: ',s);
end.