PROGRAM SarahRever(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;
BEGIN{SarahRever}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE;
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
