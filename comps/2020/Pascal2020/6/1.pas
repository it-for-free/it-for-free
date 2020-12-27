program Z1;
var
 a,b,s,p:real;
 i,k:integer;
begin
 a:=1000;
 b:=20;
 k:=12;
 p:=0.0397;
 for i:=1 to k do
   begin
     a:=a+b;
     s:=a*p;
     a:=a+s;
   end;
 writeln(a);
 readln
end.