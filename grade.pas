PROGRAM GradeClassifying(Input, Output);
VAR
  grade : INTEGER;
  class : CHAR;
FUNCTION ClassifyGrade(grade : INTEGER) : CHAR;
  BEGIN
  IF (grade <= 59) THEN classifyGrade := 'f'
  ELSE IF (grade >= 60) AND (grade <= 69) THEN ClassifyGrade := 'd'
  ELSE IF (grade >= 70) AND (grade <= 79) THEN ClassifyGrade := 'c'
  ELSE IF (grade >= 80) AND (grade <= 89) THEN CLassifyGrade := 'b'
  ELSE ClassifyGrade := 'a'
END;

PROCEDURE PrintGradeClass(class : CHAR);
 BEGIN
  IF class = ('f') THEN Writeln('You have failed')
  ELSE IF class = ('d') THEN  Writeln('You recieved a D on this assignment')
  ELSE IF class = ('c') THEN Writeln('You recieved a C on this assignment')
  ELSE IF class = ('b') THEN Writeln('You recieved a B on this assignment')
  ELSE Writeln('You got an A good job!')
 END;
BEGIN
REPEAT
  Writeln('Enter your grade');
  Read(grade);
  IF (grade > 100) OR (grade < 1) THEN Writeln('Please enter a number between 0 and 100')
  UNTIL (grade >= 0) AND (grade <= 100);

  class := ClassifyGrade(grade);
  PrintGradeClass(class);
  Read(grade);
END.

