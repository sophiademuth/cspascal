PROGRAM  SoftballHeights(input, output);
CONST
 MAXTEAM = 22;
TYPE
 List = ARRAY[1..MAXTEAM] OF INTEGER;

VAR
  heights : List;
  teamNum : INTEGER;
  average : REAL;
  sum, i : INTEGER;

BEGIN
   Writeln('How many players on on the team?');
   Readln(teamNum);
  FOR i := 1 TO teamNum DO
  BEGIN
   Writeln('What is the next players height?',i,'?');
   Readln(heights[i]);
  END;

  sum
  FOR i := 1 TO teamNum DO Writeln(heights[i]);
  Readln(i);

END.

