uses crt;
var
   s, s1, s2: string;
   id: byte;
begin
     write('������� ������������� ������: ');
     readln(s);
     write('������� ���������� ������: ');
     readln(s1);
     write('������� ���������� ������: ');
     readln(s2);
     
     id := pos(s1, s);
     delete(s, id, length(s1));
     insert(s2, s, 1);
     writeln('��������������� ������: ',s);
end.