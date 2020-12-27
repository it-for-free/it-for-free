program project1;

var
  K: integer;
  percent, A, B, total, pribil, temp: real;
begin
  A:= 10000.0;
  B:= 1000.0;
  percent:= 3.97;
  K:= 10;
  total:= A;
  pribil:= 0;
  temp:= 0;

  while (K <> 10) do
  begin
    pribil := pribil + (total * percent / 12);
    temp := temp + pribil;
    total:= total + pribil;
    K:= K-1;
  end;
  writeln('Enter money: ', total, 'pribil', temp);


end.
