uses crt;
var
   l:Boolean;
   o, p, q:shortint;
   n:integer;
begin
   write('Введите трехзначное число, что бы числа представляли возрастающую последовательность = ');
   read(n);
   o := n div 100;
   p := n div 10;
   p := p mod 10;
   q := n mod 10;
   l := ((o<p) and (o<q));
   if l=True then
   writeln('Верно = ',l)
   else
   writeln('Не соответствует условию = ',l);
end.