PROGRAM circles;  { Draw 10 circles with random center and random radius on screen }
USES graph;
VAR
  gm, gd, i : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  Randomize;

  FOR i :=1  TO 10 DO

   BEGIN;
    SetColor(Random(16));
    Circle( Random(500), Random(250), Random(10) );
   END;

  Circle(45, 50, 40);
  Read(i);
  CloseGraph;
END.
