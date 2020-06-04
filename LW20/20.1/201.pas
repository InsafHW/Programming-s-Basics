PROGRAM XPrint(INPUT, OUTPUT);  
CONST
  Min = 1;
  Max = 25;
TYPE
  Matrix  = SET OF Min .. Max;
VAR
  I: INTEGER;
  LetterPosition: Matrix;
  
PROCEDURE PrintX(VAR F: TEXT; VAR Matrix : Matrix );
VAR
  Ch: CHAR;
BEGIN{PrintX}
  Matrix  := [];
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF (Ch = 'I')
      THEN
        Matrix  := [1, 2, 3, 4, 5, 8, 13, 18, 21, 22, 23, 24, 25]
      ELSE IF (Ch = 'N')
      THEN
        Matrix  := [1, 5, 6, 7, 10, 11, 13, 15, 16, 19, 20, 21, 25]
      ELSE IF (Ch = 'S')
      THEN
        Matrix  := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 15, 20, 21, 22, 23, 24, 25]
      ELSE IF (Ch = 'A')
      THEN
        Matrix  := [2, 3, 4, 6, 10, 11, 12, 13, 14, 15, 16, 20, 21, 25]
      ELSE IF (Ch = 'F')
      THEN
        Matrix  := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 15, 16, 21];
    END;
  IF Matrix <> []
  THEN
    BEGIN
      FOR I := Min TO Max
      DO
        BEGIN
          IF (I IN Matrix)
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
    WRITELN('This symbol is not registred')
END;{PrintX}

BEGIN{LetterX} 
  PrintX(INPUT, LetterPosition)
END.
