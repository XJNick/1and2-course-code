uses crt;
var
   s, s1, s2: string;
   id: byte;
function mirror(s:string):string;
var
   i: byte;
   gl: string;
begin
     for i := length(s) downto 1 do
         gl := gl + s[i];
     mirror := gl;
end;
begin
     write('¬ведите преобразуемую строку: ');
     readln(s);
     write('¬ведите замен€емую строку: ');
     readln(s1);
     write('¬ведите замен€ющую строку: ');
     readln(s2);
//     s := 'благодарнасть';
//     s1 := 'а';
//     s2 := 'о';
     
     if pos(s1, s)>0 then
     begin
        s := mirror(s);
        id := pos(s1, s);
        delete(s, pos(s1, s), length(s1));
        insert(s2, s, id);
        s := mirror(s);
        writeln('ѕреобразованна€ строка: ', s);
     end
     else
         writeln('  сожалению замен€ющей строки не найдено в преобразуемой');
end.