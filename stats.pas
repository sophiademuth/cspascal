PROGRAM stats;
USES csp;
VAR
  myList : LIST;
  n, i, val : INTEGER;
BEGIN
  REPEAT
  Writeln('How many random numbers do you need?');
  Readln(n);
  IF (n <= 0) OR (n >= SIZE) THEN
    Writeln('your number must be between 1 and ', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);

  RandomList(myList, n);
  Bubblesort(myList);
  PrintList(myList);
  Writeln('The average = ', Average(myList):3:2 );
  Writeln('The Median = ', Median(mylist):3:2 );
  Readln;
END.