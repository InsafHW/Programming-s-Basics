PROGRAM ReadNumberProgram(INPUT, OUTPUT);
VAR
  I: INTEGER;
PROCEDURE ReadDigit(VAR FileIn: TEXT; VAR Digit: INTEGER);
VAR
  Ch: CHAR;
BEGIN{ReadDigit}
  Digit := -1;
  IF NOT EOLN(FileIn)
  THEN
    BEGIN
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
    END
END;{ReadDigit}
PROCEDURE ReadNumber(VAR FileIn: TEXT; VAR Number: INTEGER);
CONST
  MAXINT = 32768;
VAR
  Overflow: BOOLEAN;
  TempDigit: INTEGER;
BEGIN{ReadNumber}
  Overflow := FALSE;
  Number := 0;
  ReadDigit(FileIn, TempDigit);
  WHILE (TempDigit <> -1) AND (Number <> -1)
  DO
   BEGIN
     IF (Number <= MAXINT DIV 10) AND (MAXINT - Number * 10 >= TempDigit)             
     THEN
       Number := Number * 10 + TempDigit
     ELSE
       BEGIN
         Overflow := TRUE;
         Number := -1
       END;
     ReadDigit(FileIn, TempDigit)
   END;
END;{ReadNumber}
BEGIN{ReadNumberProgram}
  ReadNumber(INPUT, I);
  WRITELN(I)
END.
