PROGRAM Prime(INPUT, OUTPUT);
CONST
  Max = 100;
  Min = 2;
VAR
  PrimeList: SET OF Min .. Max;
  Current, Count: INTEGER;
BEGIN
  PrimeList := [Min .. Max];
  Current := Min;
  WHILE (PrimeList <> [])
  DO
    BEGIN 
      Count := Min;
      WHILE (Count * Current <= Max)
      DO
        BEGIN
          PrimeList := PrimeList - [Current * Count];
          Count := Count + 1
        END;
      IF (Current IN PrimeList) 
      THEN
        WRITE(Current, ' ');  
      Current := Current + 1
    END;
  WRITELN;
END.
