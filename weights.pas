PROGRAM AverageWeight;
CONST
  MAXSIZE = 20;
TYPE
  List = ARRAY[1..MAXSIZE] OF REAL;
VAR
  Weights : List;
  teamSize : INTEGER;
  average : REAL;
  sum : REAL;
  i : INTEGER;
BEGIN
  Writeln('How many players are on the team?');
  Readln(teamSize);
 FOR i := 1 TO teamSize DO
 BEGIN
  Writeln('What is the next players weight?',i, ': ');
  Readln(weights[i]);
  END;

  sum := 0;
  FOR i := 1 TO teamSize DO Writeln(weights[i]);
  Readln(i);

END.