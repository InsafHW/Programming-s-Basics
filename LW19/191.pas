PROGRAM Prime(INPUT, OUTPUT);
TYPE
  Average = 2..100;
VAR
  A: Average;
  F, X: FILE OF INTEGER;
  I: INTEGER;
BEGIN
  A := 2;
  RESET(F);
  REWRITE(X);
  READ(F, I);
  WHILE (I <= 100)
  DO
    BEGIN
      IF ((I MOD 2) = 0)
      THEN
        BEGIN
          WRITE(X, I);
          READ(F, I)
        END
    END;
  RESET(F);
  READ(F, I);
  WHILE(I <= 100)
  DO
    BEGIN
      IF ((I MOD 3) = 0)
      THEN
        BEGIN
          WRITE(X, I);
          READ(F, I)
        END
    END;
  RESET(F);
  READ(F, I);
  WHILE(I <= 100)
  DO
    BEGIN
      IF ((I MOD 5) = 0)
      THEN
        BEGIN
          WRITE(X, I);
          READ(F, I)
        END
    END;
  RESET(F);
  READ(F, I);
  WHILE(I <= 100)
  DO
    BEGIN
      IF ((I MOD 7) = 0)
      THEN
        BEGIN
          WRITE(X, I);
          READ(F, I)
        END
    END;
  RESET(X);
  READ(X, I);
  WHILE(I <= 100)
  DO
    BEGIN
      WRITELN(OUTPUT, I);
      WRITE('HUY');
      READ(X, I)
    END
END.

