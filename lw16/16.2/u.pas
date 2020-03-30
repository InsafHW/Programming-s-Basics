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
  W2 := W1;
  W3 := W2;
  W4 := W3;
  Looking := NOT EOLN(INPUT);
  WHILE Looking AND NOT(Sea OR Land)
  DO
    BEGIN{???????? ????}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd');{???????? ?? land}
      Sea := (W2 = 's') AND (W3 = 'e') AND (W4 = 'a');{???????? ?? sea} 
      Looking := NOT EOLN(INPUT)
    END;
  WRITELN('SEA? ', Sea);
  WRITELN('LAND? ', Land)   
END.
