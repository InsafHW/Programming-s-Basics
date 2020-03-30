PROGRAM SarahRever(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;
BEGIN{SarahRever}
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE;
  IF NOT EOLN(INPUT)
  THEN
    READ(W1);

  WHILE Looking AND NOT(Sea OR Land)
  DO
    BEGIN{Движение окна}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      WRITELN(W1, W2, W3, W4);
      Looking := NOT EOLN(INPUT)
    END 
END.
