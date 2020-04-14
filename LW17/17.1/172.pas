PROGRAM Digits(INPUT, OUTPUT);
CONST
  MAXINT = 32767;
VAR
  Digit: INTEGER;
PROCEDURE ReadDigit(VAR CharDigit: TEXT; VAR IntDigit: INTEGER);
VAR
  Ch: CHAR;
BEGIN{ReadDigit}
  Digit := -1;
  IF NOT EOLN(CharDigit)
  THEN
    BEGIN
      READ(CharDigit, Ch);
      IF (Ch = '0') THEN IntDigit := 0 ELSE
      IF (Ch = '1') THEN IntDigit := 1 ELSE
      IF (Ch = '2') THEN IntDigit := 2 ELSE
      IF (Ch = '3') THEN IntDigit := 3 ELSE
      IF (Ch = '4') THEN IntDigit := 4 ELSE
      IF (Ch = '5') THEN IntDigit := 5 ELSE
      IF (Ch = '6') THEN IntDigit := 6 ELSE
      IF (Ch = '7') THEN IntDigit := 7 ELSE
      IF (Ch = '8') THEN IntDigit := 8 ELSE
      IF (Ch = '9') THEN IntDigit := 9
    END
END;{ReadDigit}
PROCEDURE ReadNumber(VAR CharDigit: TEXT; VAR N: INTEGER);
VAR
  Ch: CHAR;
  NextDigit: INTEGER;
BEGIN{ReadNumber}
  N := 0;
  WHILE NOT EOLN(CharDigit) AND (NextDigit <> -1) AND (N <> -1)
  DO
    BEGIN
      ReadDigit(CharDigit, NextDigit);
      IF NextDigit <> -1
      THEN
        IF (N < (MAXINT DIV 10))
        THEN 
          N := (N * 10) + NextDigit
        ELSE
          IF (NextDigit <= (MAXINT MOD 10)) AND (N = (MAXINT DIV 10))
          THEN
            N := (N * 10) + NextDigit
          ELSE
            N := -1
     END;
END;{ReadNumber}
BEGIN{Program}
  ReadNumber(INPUT, Digit);
  WRITELN(Digit)
END.{Program}



