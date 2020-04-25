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
  State: BOOLEAN;
  TempDigit: INTEGER;
BEGIN{ReadNumber}
  Number := 0;
  WHILE (TempDigit <> -1) AND (NOT EOLN(FileIn)) AND (Number <> -1)
  DO
   BEGIN
     State := FALSE;
     ReadDigit(FileIn, TempDigit);
     IF (Number <= (MAXINT DIV 10))
     THEN
       BEGIN
         Number := Number * 10; {Увеличиваем разряд}
         IF (MAXINT - Number >= TempDigit)
         THEN
           State := TRUE
       END
     ELSE
       State := FALSE;
    IF (State) 
    THEN
      Number := Number + TempDigit
    ELSE
      Number := -1 
   END;
END;{ReadNumber}
BEGIN{ReadNumberProgram}
  ReadNumber(INPUT, I);
  WRITELN(I)
END.
