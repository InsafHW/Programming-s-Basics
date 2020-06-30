PROGRAM Stat(INPUT, OUTPUT);
CONST
  MAXINT = 32768;
VAR
  Min, Max, Sum, Count, Number: INTEGER;
  Overflow: BOOLEAN;
PROCEDURE ReadDigit(VAR FileIn: TEXT; VAR Digit: INTEGER);
VAR
  Ch: CHAR;
BEGIN{ReadDigit}
  Digit := -1;
  READ(FileIn, Ch);
  IF (Ch = '0') THEN Digit := 0 ELSE
  IF (Ch = '1') THEN Digit := 1 ELSE
  IF (Ch = '2') THEN Digit := 2 ELSE
  IF (Ch = '3') THEN Digit := 3 ELSE
  IF (Ch = '4') THEN Digit := 4 ELSE
  IF (Ch = '5') THEN Digit := 5 ELSE
  IF (Ch = '6') THEN Digit := 6 ELSE
  IF (Ch = '7') THEN Digit := 7 ELSE
  IF (Ch = '8') THEN Digit := 8 ELSE
  IF (Ch = '9') THEN Digit := 9
END;{ReadDigit}
PROCEDURE ReadNumber(VAR FileIn: TEXT; VAR Number: INTEGER);
VAR
  TempDigit: INTEGER;
BEGIN{ReadNumber}
  Number := 0;
  ReadDigit(FileIn, TempDigit);
  WHILE (TempDigit <> -1) AND (Number <> -1)
  DO
   BEGIN
     IF (Number <= MAXINT DIV 10) AND (MAXINT - Number * 10 >= TempDigit)             
     THEN
       Number := Number * 10 + TempDigit
     ELSE
       Number := -1;
     ReadDigit(FileIn, TempDigit)
   END;
END;{ReadNumber}
BEGIN{ReadNumberProgram}
  Overflow := FALSE;
  WRITELN('Enter integer digits with spacebar:');
  ReadNumber(INPUT, Number);
  Sum := Number;
  Min := Number;
  Max := Number;
  Count := 1;
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      ReadNumber(INPUT, Number);
      IF (Number < Min)
      THEN
        Min := Number;
      IF (Number > Max)
      THEN
        Max := Number;
      IF Sum < (MAXINT - Number)
      THEN
        BEGIN
          Sum := Sum + Number;
          Count := Count + 1
        END
      ELSE
        Overflow := TRUE;
    END;
  WRITELN('Min digit - ', Min);
  WRITELN('Max digit - ', Max);
  IF Overflow
  THEN
    WRITELN('Sum overflow')
  ELSE
    WRITELN('Average: ', (Sum DIV Count), '.', (Sum MOD Count));
END.
