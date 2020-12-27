program project1;
uses SYSUTILS;
var
  a, b, c: integer;
  x1, x2, discriminant: real;
  r: real;
begin
  a := 1;
  b := 9;
  c := 5;

  if (a = 0) then
  begin
    writeln('error');
  end;

  discriminant:=  b * b - 4 * a* c;

  if (discriminant < 0) then
  begin
    writeln('discriminant < 0. Solution does not exist');
  end else
  begin
      r:= sqrt(discriminant);
      x1 := (-b + r) / (2 * a);
      x2 := (-b - r) / (2 * a);

      if (r = round(r)) then
      begin
       writeln(format('\frac{%d}{%d}', [-b+r, 2*a]));
       writeln(format('\frac{%d}{%d}', [-b-r, 2*a]));
      end else
      begin
           if (b = 0) then
           begin

            writeln(format('\frac{\sqrt{%d}}{%d}', [-c, 2*a]));
            writeln(format('\frac{-\sqrt{%d}}{%d}', [c, 2*a]));

           end else
           begin
             writeln(format('\frac{%d+\sqrt{%d}}{%d}', [-b, b*b-4*a*c, 2*a]));
             writeln(format('\frac{%d-\sqrt{%d}}{%d}', [-b, b*b-4*a*c, 2*a]));
           end;
      end;
  end;


end.
