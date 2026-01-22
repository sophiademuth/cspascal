PROGRAM probabilty;
VAR
  i : INTEGER;
  p : INTEGER;
BEGIN


Randomize;
p := Random(10);
IF p >= 8 THEN Writeln('Red')
ELSE IF p >= 3 THEN Writeln('Blue');
ELSE Writeln('Yellow');
Readln;
END.