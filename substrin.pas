PROGRAM sub;
VAR
 s1, s2 : STRING;
 i, j : INTEGER;
FUNCTION substring(s : STRING; start, len : INTEGER) : STRING;

 VAR
  i : INTEGER;
  temps : STRING;
 BEGIN
 temps[0] := chr(len);
  FOR i := 1 TO len DO
    temps[i] := s[i + 6];
  substring := temps;
 END;

BEGIN
 s1 := substring('HelloMrMurryYouSuck', 4, 10);
 Writeln('Hello -> ', s1);
 Readln(i);
END.