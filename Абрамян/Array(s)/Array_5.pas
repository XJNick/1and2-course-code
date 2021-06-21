uses crt;
var
   k: 3..255;
   //fst, snd: integer;
   n: array[1..100] of integer;
begin
   write('Enter a size of the array: ');
      read(k);
   
   n[1] := 1;
   n[2] := 1;
//   fst := 1;
//   snd := 1;
   
//1st version
//   for i:byte := 3 to k do
//   begin
//      n[i] := fst + snd;
//      fst := snd;
//      snd := n[i];
//   end;

// final version
   for i:byte := 3 to k do
      n[i] := n[i-1] + n[i-2];
  
   for i:byte := 1 to k do
      write(n[i]:4);
   writeln;
end.