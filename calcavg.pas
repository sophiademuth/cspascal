PROGRAM calcgrade;
CONST
 MAXGRADES = 20;
TYPE
 List = ARRAY[1..MAXGRADES] OF REAL;

VAR
 grade : List;
 average : REAL;
 numGrades, i : INTEGER;
 FUNCTION CalculateAverage(gradeList : List; num : INTEGER) : REAL;
  VAR sum : INTEGER;
  BEGIN
   sum := 0;
   FOR i := 1 TO numGrades DO sum := sum + grade[i];
   CalculateAverage := sum/numGrades;

 END;

BEGIN
sum := 0;
  Writeln('How many assignments do you have in the class?');
  Readln(numGrades);
 FOR i := 1 TO numGrades DO
 BEGIN
 Writeln('What are your grades in assignment #',i,'?');
 Readln(grade[i]);
 sum := sum + grade[i];

 average:= sum/numGrades;
 Writeln('The average of all your assignment grades in thi sclass is ',average);
 Readln(i);
END;



  readln(i);



END.