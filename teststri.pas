PROGRAM teststrings;
USES CSP;
VAR
  s : STRING;
BEGIN
  s := 'hello';
  IF Prefix('hello', 10) = s THEN Writeln('pass')
  ELSE Writeln('fail');
  IF substring('hello', 3, 10) = 'llo' THEN Writeln('pass')
  ELSE Writeln('fail');
  IF substring('hello', 7, 3) = '' THEN Writeln('pass')
  ELSE Writeln('fail');
  Readln

END.