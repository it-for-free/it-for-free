program z1;

var A, B, S, sumPrib, Vneseno: real;
    k, i : integer;
  // k - кол-во месяцев

function PribilMes(S: real): real;
begin
  result := S * 0.0397 / 12;
end;


begin
  A := 1000;
  B := 100;
  k := 12;
  S := A;
  Vneseno := A;
  i := 1;
  repeat
    Vneseno := Vneseno + B;
    sumPrib := PribilMes(S);    // прибыль предыдущего мес
    if k = 1 then break;
    S := S + B + sumPrib;       // S - сумма на счете (с процентами вместе)
    sumPrib := PribilMes(S);    // прибыль послед мес
    i := i + 1;
  until (i > k);

  writeln('Za ', k, ' mesiytcev vneseno ', Vneseno:0:2, ' deneg');
  writeln('Za eto vremiy nachisleno pribili: ', sumPrib:0:2);

  readln();
end.

