{функцикя обходит массив, инициализируя каждое значение, рандомным числом.
Проверка на строках 18 - 29 - выявление и перезапись повторяющихся значений.
Лишняя локальная переменная "l", "j".
Отсутствует запись result.}
type b = array[1..10] of integer;
function filling_array( min, max : integer ) : b;
  var  count, i, k, number : integer;
      arr : b;
begin
  count := 0;
  k := 1;
  randomize;
  while( count < 10 ) do
  begin
    number := random( max - (min + 1) + min ) ;
    write( number, ' ' );
    for i := low( arr ) to k do
    begin
      if( arr[i] <> number ) then
      begin
          if( i = k ) then
          begin
            count += 1;
            k += 1;
            arr[count] := number;
          end;
      end
      else
        break;
    end;
  end;
  writeln();
  result := arr;
end;