uses crt;
var
   a, b, c:integer;
   l:Boolean;
   k:string;
begin
   write('Ââåäèòå ñòîğîíû ïğÿìîóãîëüíîãî òğåóãîëüíèêà (a, b, c) => ');
   read(a, b, c);
   l:=c<a+b;
   if not l then
   k := 'íå ';
   writeln('Òğåóãîëüíèê abc ',k,'ïğÿìîóãîëüíûé');
end.