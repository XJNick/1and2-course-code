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
     write('������� ������������� ������: ');
     readln(s);
     write('������� ���������� ������: ');
     readln(s1);
     write('������� ���������� ������: ');
     readln(s2);
//     s := '�������������';
//     s1 := '�';
//     s2 := '�';
     
     if pos(s1, s)>0 then
     begin
        s := mirror(s);
        id := pos(s1, s);
        delete(s, pos(s1, s), length(s1));
        insert(s2, s, id);
        s := mirror(s);
        writeln('��������������� ������: ', s);
     end
     else
         writeln('� ��������� ���������� ������ �� ������� � �������������');
end.