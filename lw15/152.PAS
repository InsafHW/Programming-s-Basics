PROGRAM ReverseCount(INPUT, OUTPUT);
USES
  Count3;
VAR
  Ch1, Ch2, Ch3, V100, V10, V1: CHAR;
BEGIN{ReverseCount}
  Start;
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      Ch1 := Ch2;
      Ch2 := Ch3;
      READ(Ch3);
      IF (Ch1 <> ' ') AND (Ch2 <> ' ') AND (Ch3 <> ' ')
      THEN
        BEGIN
          IF ((Ch1< Ch2) AND (Ch2 > Ch3)) OR ((Ch1> Ch2) AND (Ch2 < Ch3))
          THEN
            Bump
        END
    END;
  Value(V100, V10, V1);
  WRITE('Количество реверсов: ');
  WRITELN(V100, V10, V1)
END.