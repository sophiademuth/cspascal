PROGRAM sort;
USES csp;
VAR
  aList : LIST;
  i, temp, j : INTEGER;
BEGIN
  RandomList(aList, 10);
  Writeln('Unsorted:');
  PrintList(aList);

  BubbleSort(aList);
  Writeln('Sorted:');
  PrintList(aList);
  Readln;
END.