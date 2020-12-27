Çàäà÷à 3
ß òàê ïîíèìàþ ýòà ôóíêöèÿ çàïîëíåíèÿ ìàññèâà íåïîâòîðÿþùèìèñÿ ðàíäîìíûìè ÷èñëàìè 
program my_program;
type b = array[1..10] of integer;
     
function filling_array( min, max : integer ) : b;
  var  count, i, j, k, number : integer;
      arr : b;
begin 
  count := 0;
  k := 1;
  randomize; 
  while( count < 10 ) do 
  begin
    number := random( max - (min + 1) + min ) ; 
    write( number, ' ' ); 
    
      if( arr[count] <> number ) then
      begin
         arr[count] := number; 
         count += 1;
      end
      else
        break;
  end;
  filling_array := arr; 
end;
Íåïîíÿòíî çà÷åì òàì ïåðåìåííàÿ L? Óäàëèë åå. i,j,k ñîêðàòèë. 