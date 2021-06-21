uses crt;
var
   a, b, c:integer;
   l:Boolean;
   k:string;
begin
   write('Ââåäèòå ñòîğîíû ñóùåñòâóşùåãî òğåóãîëüíèêà (a, b, c) => ');
   read(a, b, c);
   l:=(a<b+c) and (b<a+c) and (c<a+b);
   if not l then
   k := 'íå ';
   writeln('Òğåóãîëüíèê abc ',k,'ñóùåñòâóåò');
end.