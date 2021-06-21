uses crt;
type
    m_string = array[1..5] of -37..25; {одномерный массив (строка из 5ти элементов)}
var
    arr: array[1..4] of m_string;{массив массивов(матрица из 4х m_string)}
procedure print_m;{процеура вывода матрицы}
begin 
   for i:byte := 1 to 4 do
   begin
    for j:byte := 1 to 5 do
        write(arr[i, j]:5);
    writeln;
   end;       
end;   
procedure string_sort;{процедура перемещения строк}
var p, a, b:integer;
begin
    repeat
      Write('Введите номера строк, которые хотите взаимно переместить: ');
      read(a, b);
    until not((a<1) or (a>4) or (b<1) or (b>4));
    for j:byte := 1 to 5 do
    begin
        p := arr[a, j]; 
        arr[a, j] := arr[b, j];
        arr[b, j] := p;
    end;
end; 
procedure column_sort;{процедура перемещения столбцов}
var p, a, b:integer;
begin
   repeat
      Write('Введите номера столбцов, которые хотите взаимно переместить: ');
      read(a, b);
    until not((a<1) or (a>5) or (b<1) or (b>5));
    for i:byte := 1 to 4 do
    begin
        p := arr[i, a]; 
        arr[i, a] := arr[i, b];
        arr[i, b] := p;
    end;
end;
begin
    for i:byte := 1 to 4 do
        for j:byte := 1 to 5 do
            arr[i, j] := random(62)-37;
            
    print_m;    
    writeln;
    
    string_sort;
    print_m;
    writeln;
    
    column_sort;
    print_m;
    writeln;
end.    