program zadaha5;

type Integer_array = array[1..10] of integer;
     score_array = array[1..10] of integer;


var fil : text;
    filename, line, s : string;
    i, c : integer;
    massiv_int : Integer_array;
    massiv_string : score_array;
begin
   filename := '/home/rm/Pascal/unput.txt';
  assign(fil, filename);
  reset(fil);
  while not eof(fil) do
  begin
    i := 0;
    readln(fil, line);
    for i := 1 to length(line) do
    begin
      if (line[i] <= '9') and (line[i] >= '0') then
      begin
        val(line[i], massiv_int[i], c);
        write(massiv_int[i], ' ');
        inc(massiv_string[i]);
      end
    end;
    writeln();
  end;
end.