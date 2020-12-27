program pascal3;
 type b = array[1..10] of integer;


function filling_array( min, max : integer ) : b;
  var  count, i, j, l, k, number : integer;
      arr : b;
begin
  count := 0;
  k := 1;
  randomize;
  while( count < 10 ) do
  begin
    number := random( max - (min + 1) + min ) ;
    write( number, ' ' );
    j := 0;
    for i := low( arr ) to k do
    begin
      if( arr[i] <> number ) then
      begin
          j += 1;
          if( j = k ) then
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
  filling_array := arr;
end;
{ заполнение и вывод массива от 1 до 10 случайными неповторяющимися значениями, на вход функции подаются два аргумента
  . минимальное и максимальное значение.  В функции генератор случайных чисел генерирует
  10 значений , происходит проверка является ли оно уникальным в массиве и добавляется .
}