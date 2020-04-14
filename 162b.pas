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
      Looking := NOT EOLN(INPUT);
      Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd');{Проверка на land}
      Sea := (W2 = 's') AND (W3 = 'e') AND (W4 = 'a');{Проверка на sea}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
    END;
  WRITELN('SEA? ', Sea);
  WRITELN('LAND? ', Land)   
END.
