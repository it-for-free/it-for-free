program Pascal1;
 var  c, i,j : integer;
   profit,beg_sum,percent,b : real;


begin
 //sum_moun = summa * 0.039712 / 12
 percent := 0.039712;
 beg_sum := 1000;
 b := 70;
 c := 12;
 //summa:= 0;
 profit := 0;
 for i := 1 to c - 1 do
 begin
   //if i = 1 then
      //continue
   //else
   //begin
     beg_sum += b;
     profit := (beg_sum - b) * percent;
   //end;
 end;
 write( beg_sum, '', profit );
end.

