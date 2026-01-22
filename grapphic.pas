PROGRAM graphics;
USES Graph;
VAR
  gd, gm : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  SetColor(4);
  Rectangle(400, 450, 100, 150);

  SetColor(2);
  Rectangle(300, 450, 200, 300);

  SetColor(5);
  Line(100, 150, 250, 50);

  SetColor(5);
  Line(250, 50, 400, 150);

  SetColor(6);
  Rectangle(300, 250, 200, 170);

  Readln(gd);
  CloseGraph;
END.