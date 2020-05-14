PROGRAM XPrint(INPUT, OUTPUT);  
CONST
  Min = 1;
  Max = 25;
TYPE
  Position = SET OF Min .. Max;
VAR
  I: INTEGER;
  LetterPosition: Position;
PROCEDURE PrintX(VAR F: TEXT; VAR Position: Position);
VAR
  Ch: CHAR;
BEGIN{PrintX}
  Position := [];
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF (Ch = 'I')
      THEN
        Position := [1, 2, 3, 4, 5, 8, 13, 18, 21, 22, 23, 24, 25]
      ELSE IF (Ch = 'N')
      THEN
        Position := [1, 5, 6, 7, 10, 11, 13, 15, 16, 19, 20, 21, 25]
      ELSE IF (Ch = 'S')
      THEN
        Position := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 15, 20, 21, 22, 23, 24, 25]
      ELSE IF (Ch = 'A')
      THEN
        Position := [2, 3, 4, 6, 10, 11, 12, 13, 14, 15, 16, 20, 21, 25]
      ELSE IF (Ch = 'F')
      THEN
        Position := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 15, 16, 21];
    END;
END;{PrintX}
BEGIN{LetterX} 
  PrintX(INPUT, LetterPosition);
  IF LetterPosition <> []
  THEN
    BEGIN
      FOR I := Min TO Max
      DO
        BEGIN
          IF (I IN LetterPosition)
          THEN
            WRITE(OUTPUT, 'X')
          ELSE
            WRITE(OUTPUT, ' ');
          IF (I MOD 5 = 0)
          THEN
            WRITELN
        END      
    END
  ELSE
    WRITELN('Данный символ не зарегистрирован')
END.
