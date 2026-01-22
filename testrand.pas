PROGRAM TestRandom;
USES csp;
VAR
  myList : LIST;
  n : INTEGER;


FUNCTION Smallest(aList : LIST) : INTEGER;
VAR
  min, i : INTEGER;
BEGIN
  min := aList[1];
  FOR i := 2 TO Length(aList) DO
    IF aList[i] < min THEN min := aList[i];
    Smallest := min;
END;

BEGIN
  REPEAT
    Writeln('Enter how many random numbers you want');
    Readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
      Writeln('Your number should be between 0 and ', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);
  RandomList(myList, n);
  PrintList(myList);
  Writeln(' Smallest element is ', Smallest(myList));
  Readln
END.