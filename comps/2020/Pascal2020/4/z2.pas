program my_program;
type b = array[1..10] of integer;

  var arr: b;
      x: integer;

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

begin
  for x:=1 to 10 do arr[x]:=x;
  for x:=1 to 10 do write(filling_array(0, 10)[x], ' ');

  readln();
end.

{}
