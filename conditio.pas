PROGRAM conditionals;
VAR
  num, guess, i : INTEGER;
BEGIN
  Randomize;
  num := Random(10);

  REPEAT
   Write('Guess an number betweem 0 and 9: ');
   Read(Guess);
   IF Guess < num THEN Writeln('Incorrect, too low')
   ELSE IF guess> num THEN Writeln('Incorrect, too high')
   Else Writeln('That is Correct!');
  UNTIL num = guess;

  Read(guess)
END.