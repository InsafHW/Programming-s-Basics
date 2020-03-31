PROGRAM Digits(INPUT, OUTPUT);
VAR
  Digit, Sum: INTEGER;
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
BEGIN{Digits}
  Sum := 0;
  Digit := 0;
  WHILE (Digit <> -1)
  DO
    BEGIN
      Sum := Sum + Digit;
      ReadDigit(INPUT, Digit) 
    END;
    IF (Sum = 0)
    THEN
      WRITELN('-1')
    ELSE
      WRITELN(Sum)
END.{Digits}
