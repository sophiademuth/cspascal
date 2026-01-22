PROGRAM review;

TYPE
  Fraction = RECORD
               num : INTEGER;
               den : INTEGER;
             END;
  VAR
  f1, f2 : Fraction;

BEGIN
  f1.num := 2;
  f1.den := 3;
  f2.num := 4;
  f2.den := 5;

  Writeln('Fraction 1 := ', f1.num,'/',f1.den);
  Writeln('Fraction 2 := ', f2.num,'/',f2.den);
  Writeln('Product := ', f1.num * f2.num, '/' , f1.den * f2.den);
  Writeln(f1.num * f2.den + f2.num + f1.den ,'/', f1.den * f2.den);
  Readln;
END.

