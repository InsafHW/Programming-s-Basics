PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4: CHAR;
  Land, Sea: BOOLEAN;
BEGIN{SarahRevere}
  Land := FALSE;
  Sea := FALSE;
  IF NOT EOLN
  THEN
    READ(W1);
  W2 := W1;
  W3 := W2;
  W4 := W3;
  WHILE (NOT EOLN) AND (NOT Sea) AND (NOT Land)
  DO
    BEGIN
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      WRITELN(W1, W2, W3, W4)
    END
END.
