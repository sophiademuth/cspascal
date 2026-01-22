PROGRAM Listtest;
USES csp;
VAR
  myList : LIST;
  i : INTEGER;

BEGIN
 Writeln('Length of list is ', Length(myList));
  Append(myList, 5);
  Append(myList, 10);
  Append(mylist, -50);
  Append(mylist, 16);
 Writeln('Now the length is ', Length(mylist));
 PrintList(myList);
 Readln(i);
   Append(mylist, 90);
   Append(mylist, 25);

END.