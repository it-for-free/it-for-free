program zadaha2;

var plus, minus : string;
    number, i, j, ostatok, all : integer;
begin
   plus := '+';
   minus := '-';
   ostatok := 0;
   number := 10623;
   while (number > 0) do
   begin
     for i := 1 to number mod 10 do
       write(plus);
     for j := 1 to 3 do
       write(minus);
     ostatok := (number mod 10) + 3;
     while (ostatok < 13) do
     begin
       write(plus);
       inc(ostatok);
     end;
     writeln();
     number := number div 10;
     inc(all);
   end;
   i := 1;
   j := 1;
   for i := 1 to (7 - all) do
   begin
     for j := 1 to 3 do
       write(minus);
     j := 1;
     for j := 1 to 10 do
       write(plus);
     writeln();
   end;
end.