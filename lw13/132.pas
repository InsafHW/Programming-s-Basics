PROGRAM Lex(INPUT, OUTPUT);
VAR
  F1, F2: TEXT;
  Ch, Result: CHAR;
PROCEDURE Lexico(VAR F1, F2: TEXT; VAR Result: CHAR);
{Result 0, 1, 2 ���� ������������������ ������� F1 =, <, > ��� F2       
��������������. ����������� ���������, ��������������� F1 � F2,
������ ���� ����������} 
VAR
  Ch1, Ch2: CHAR;
BEGIN {Lexico}
  RESET(F1);
  RESET(F2);
  Result := '0';
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (Result = '0')
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2)
      THEN {Ch1 < Ch2 ��� F1 ������ F2}
        Result := '1'
      ELSE
        IF (Ch1 > Ch2)
        THEN {Ch1 > Ch2 ��� F2 ������ F1}
          Result := '2'
    END;
  IF (Result = '0') AND NOT EOLN(F1)
  THEN
    Result := '2';
  IF (Result = '0') AND NOT EOLN(F2)
  THEN
    Result := '1'
END;{Lexico}
BEGIN{Lex}
  REWRITE(F1);
  REWRITE(F2); 
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      READ(INPUT, Ch);
      WRITE(F1, Ch)
    END;
    READLN(INPUT);
    WHILE NOT EOLN(INPUT)
    DO
      BEGIN
        READ(INPUT, Ch);
        WRITE(F2, Ch)
      END;
    READLN(INPUT);
    WRITELN(F1);
    WRITELN(F2);
    Lexico(F1, F2, Result);
    WRITELN(Result)
END.{Lex}
