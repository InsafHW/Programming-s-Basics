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
      Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd');
      Sea := (W2 = 's') AND (W3 = 'e') AND (W4 = 'a')
    END;
  IF Land
  THEN
    WRITELN('The Britsish are coming by land')
  ELSE
    IF Sea
    THEN
      WRITELN('The British are coming by sea')
    ELSE
      WRITELN('Sarah did not say')
END.
