program zadaha1;

function chetBanka(a, b: real; k : integer):real;

var i : integer;
    s, pribal, sum_pribal, stavka : real;

begin
  pribal := 0;
  sum_pribal := 0;
  stavka := 0.0397;
  s := a;
  for i := 1 to k do
  begin
    pribal := (s * stavka) / 12;
    s := s + pribal;
    s := s + b;
    sum_pribal := sum_pribal + pribal;
  end;
    writeln('Vneseno ', s, ' many');
    writeln('Na vihode of ', k, ' mounth polucheno in proc', sum_pribal);
end;

var a, b: real;
    k : integer;
begin
  writeln('Write iznahalnoe  cislo many');
  readln(a);
  writeln('Sum popolneniy every mounth');
  readln(b);
  writeln('Kol-vo mounths');
  readln(k);
  chetBanka(a, b, k);
end.