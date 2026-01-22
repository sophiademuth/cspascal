PROGRAM strings;
VAR
  name, msg : STRING;
  age : INTEGER;
BEGIN
  Writeln('What is your name ');
  Readln(name);
  Writeln('What is your age');
  Readln(age);
  msg := 'Hi ' + name + '.It is cool that your are';
  Writeln(msg, age, ' years old.');
  Writeln('Your message is  ', length(msg[0]),' long');
  Readln(name);
END.