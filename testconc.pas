PROGRAM testconcat;
USES csp;
VAR
  s : STRING;

BEGIN
  IF Concat('Mr', 'Murry') = 'MrMurry' THEN
    Writeln('Pass');
  ELSE
    Writeln('Fail');
  IF oncat('Hello', 'World') = 'HelloWorld' THEN
    Writeln('Pass')
  ELSE
    Writeln('Fail')
  Readln(s);
END.