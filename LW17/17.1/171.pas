PROGRAM Digits(INPUT, OUTPUT);
VAR
  I, Sum: INTEGER;
PROCEDURE ReadDigit(VAR Inf: TEXT; VAR Int: INTEGER);
VAR
  Ch: CHAR;
BEGIN{ReadDigit}
  READ(Inf, Ch);
  IF (Ch >= '0') AND (Ch <= '9')
  THEN
    Int := Ord(Ch) - 48
  ELSE
    Int := -1
END;{ReadDigit}
BEGIN{Digits}
  Sum := 0;
  I := 0;
  WHILE NOT EOLN(INPUT) AND (I <> -1)
  DO
    BEGIN
      IF NOT EOLN(INPUT)
      THEN
        BEGIN
          ReadDigit(INPUT, I);
          IF I <> (-1)
          THEN
            Sum := Sum + I 
        END
    END;
  IF Sum = 0
  THEN
    WRITE('-1')
  ELSE
    WRITELN('Сумма всех цифр в файле равна ', Sum)
END.{Digits}
