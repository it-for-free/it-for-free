program Pascal2;
 var i, j, k,n : integer;

begin
 //readln(n);
 n := 28;
 k := 0;

 while(k < n) do
 begin
   write( n mod 10, ' ');
   n := n div 10;
 end;
 writeln();


 for i:= 1 to 7 do
 begin
   for j := 1 to 13 do
   begin
     if(j <= 3) then
       write('-')
     else
      write('+');
   end;
 writeln();
 end;
end.

