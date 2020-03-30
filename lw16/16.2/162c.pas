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
  IF NOT EOLN(INPUT)
  THEN
    READ(W2);
  IF NOT EOLN(INPUT)
  THEN
    READ(W3)
  ELSE
    WRITELN('Ошибка ввода');
  IF NOT EOLN(INPUT)
  THEN
    READ(W4);
  WHILE Looking AND NOT(Sea OR Land)
  DO
    BEGIN{Движение окна}
      Looking := NOT EOLN(INPUT);
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      Land := (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd');{Проверка на land}
      Sea := (W1 = 's') AND (W2 = 'e') AND (W3 = 'a');{Проверка на sea}
    END;
  IF Land
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Sea
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say') 
END.
