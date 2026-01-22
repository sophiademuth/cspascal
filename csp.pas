UNIT csp;

INTERFACE

{List Data Types}

CONST
 SIZE = 255;

TYPE
 List = ARRAY[0..SIZE] OF INTEGER;

{List Functions/Procedures}

FUNCTION Length(aList : LIST) : INTEGER;
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
PROCEDURE Insert(VAR alist : LIST; i, value : INTEGER);
PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
PROCEDURE PrintList(alist : LIST);
FUNCTION Sum(aList : LIST) : INTEGER;
FUNCTION Average(aList : LIST) : REAL;
FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION Median(aList : LIST) : REAL;
FUNCTION Smallest(aList : LIST) : INTEGER;
FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
PROCEDURE BubbleSort(VAR aList : LIST);
PROCEDURE swap(VAR a, b : INTEGER);
PROCEDURE SelctionSort(VAR aList : LIST);
{String Functions}

 FUNCTION Len(s : STRING) : INTEGER;
 FUNCTION Concat(s1, s2: STRING) : STRING;
 FUNCTION Reverse(s : STRING) : STRING;
 FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
 FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;


IMPLEMENTATION

PROCEDURE PrintList(alist : LIST);
VAR
  i : INTEGER;
BEGIN
   FOR i := 1 TO Length(alist) DO
    Writeln('Element #', i,  ' = ', alist[i]);
END;


FUNCTION Length(aList : LIST) : INTEGER;
BEGIN
  Length := aList[0];
END;

PROCEDURE Append(VAR aList : LIST; value : INTEGER);
BEGIN
  aList[0] := Length(aList) + 1;
  aList[ Length(alist) ] := value;
END;
PROCEDURE BubbleSort(VAR aList : LIST);
VAR
  i, j, temp : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
    FOR j := 1 TO Length(aList) - i DO
      IF aList[j] > aList[j+ 1] THEN
        Swap(aList[j], aList[j + 1]);
END;


PROCEDURE Insert(VAR alist : LIST; i, value : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF i > Length(aList) THEN Append(aList, value)
  ELSE IF i > 0 THEN
  BEGIN
  alist[0] := Length(aList) + 1;
  FOR index := Length(aList) DOWNTO i DO
    aList[index] := aList[index - 1];
  alist[i] := value;
  END;
END;

PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
VAR
  index : INTEGER;

BEGIN
IF (i <= Length(aList)) AND (i > 0) THEN
BEGIN
  FOR index := i TO Length(aList) - 1 DO
     aList[index] := aList[index + 1];
   aList[0] := Length(aList) - 1;
  END;
END;


FUNCTION Sum(aList : LIST) : INTEGER;
VAR
  i, total : INTEGER;
BEGIN
  total := 0;
 FOR i := 1 To Length(aList) DO
  total := total + aList[i];
  Sum := total;
END;

PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO n DO
    Append(aList, Random(100));
END;

FUNCTION Average(aList : LIST) : REAL;
BEGIN
  Average := Sum(aList)/Length(aList);
END;

FUNCTION Median(aList : LIST) : REAL;
BEGIN
  IF Length(aList) MOD 2 = 0 THEN
    Median := (aList[Length(aList) DIV 2] + aList[Length(aList) DIV 2 + 1]) / 2
  ELSE
      Median := aList[Length(aList) DIV 2 + 1];

END;

FUNCTION Smallest(aList : LIST) : INTEGER;
VAR
  i, min : INTEGER;
BEGIN
  min := aList[1];
  FOR i := 2 TO Length(aList) DO
    IF aList[i] < min THEN min := aList[i];
  Smallest := min;
END;


FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;
VAR
  i : INTEGER;
  increase : BOOLEAN;
BEGIN
  increase := true;
  FOR i := 1 TO Length(aList) DO
  IF  aList[i] > aList[i + 1] THEN
  BEGIN
  increase := false;
  Break;
  END;
  IsIncreasing := increase;

END;

FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
  i, count : INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := FALSE;
  count := 0;
  FOR i := 1 TO Length(aList) DO
  BEGIN
    count := count + 1;
    IF aList[i] = value THEN
    BEGIN
      Found := TRUE;
      Break;
    END;
  END;
  Writeln('Number of searches = ', count);
  LinearSearch := Found;
END;

FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
  l, r, mid, count : INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := FALSE;
  l := 1;
  r := Length(aList);
  count := 0;
  REPEAT
    count := count + 1;
    mid := (1 + r) DIV 2;
    IF aList[mid] = value THEN
    BEGIN
      Found := TRUE;
      BREAK;
    END
    ELSE IF aList[mid] < value THEN l := mid + 1
    ELSE r := mid - 1;
  UNTIL 1 > r;
  Writeln('Number of searches = ', count);
  BinarySearch := Found;
END;

PROCEDURE swap(VAR a, b : INTEGER);
VAR
  temp : INTEGER;
BEGIN
  temp := a;
  a := b;
  b := temp;
END;

PROCEDURE SelctionSort(VAR aList : LIST);
VAR
  i, j, min : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    min := i;
    FOR j := i + 1 TO Length(aList) DO
    BEGIN
      IF aList[j] < aList[min] THEN min := j;
    END;
    Swap(aList[i], aList[min]);
  END
END;

PROCEDURE InsertionSort(VAR aList : LIST);
VAR
  i, j : INTEGER;
BEGIN
  FOR i := 2 TO Length(aList) DO
    FOR j := i DOWNTO 2 DO
      IF aList[j] < aList[j-1] THEN
        Swap(aList[j], aList[j - 1])
      ELSE
        Break;
END;


{String Functions}

FUNCTION Len(s : STRING) : INTEGER;
BEGIN
  Len := ord(s[0]);
END;

FUNCTION Concat(s1, s2: STRING) : STRING;
VAR
  temps : STRING;
  i : INTEGER;

BEGIN
  temps[0] := chr(Len(s1) + Len(s2));
  FOR i := 1 TO Len(s1) DO
   temps[i] := s1[i];
  FOR i := 1 TO Len(s2) DO
   temps[len(s1) + i] := s2[i];
   Concat := temps;
END;

FUNCTION Reverse(s : STRING) : STRING;
VAR
  i : INTEGER;
  temps : STRING;
BEGIN
   FOR i := 1 TO Len(s) DO
     temps[i] := s[Len(s) - i + 1];
   temps[0] :=  s[0];
   Reverse := temps;
END;

FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
VAR
  i : INTEGER;
  temps : STRING;
BEGIN
IF n > Len(s) THEN n := Len(s);
  FOR i := 1 TO n DO
     temps[i] := s[i];
     temps[0] := Chr(n);
     Prefix := temps
END;

FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN
  IF start > Len(s) THEN Substring := ''
  ELSE
   BEGIN
   IF n > Len(s) - start + 1 THEN n := Len(s) - start + 1;
    FOR i := 1 TO n DO
      temps[i] := s[start + i - 1];
    temps[0] := chr(n);
    Substring := temps;
    END;
   END;
END.