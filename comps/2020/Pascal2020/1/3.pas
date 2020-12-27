program zadaha3;
type b = array[1..10] of integer;
var a, o : integer;
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
          if( count = k-1 ) then
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

//    Функция получает на вход числа минимума и максимума для рандомного заполнения
//    элементов массива. Внутри нее она производит манипуляции и сравнеия, чтобы полученный массив имел уникальные значения. На выходе ее значение принадлежит пользовательскому типу(массиву из 10 целочисленных элементов).
//    Убираем переменную "l", она не используется, удаляем и "j", ее условие заменяем на проверку совместно с "count" и "k".