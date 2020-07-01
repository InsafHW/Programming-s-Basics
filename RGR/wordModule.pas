UNIT wordModule;
INTERFACE
  CONST
    RusAlphabet = ['�' .. '�', '�' .. '�'];
    EngAlphabet = ['a' .. 'z', 'A' .. 'Z'];
    UpperLetters = ['�' .. '�', 'A' .. 'Z'];
    
  FUNCTION toLowerCase(VAR Ch: CHAR): CHAR;
  PROCEDURE getWord(VAR FIn: TEXT; VAR Word: STRING);
IMPLEMENTATION
  FUNCTION toLowerCase(VAR Ch: CHAR): CHAR;
  BEGIN
    IF (Ch = '�') OR (Ch = '�')
    THEN
      toLowerCase := '�';
    IF (Ch IN UpperLetters)
    THEN
      toLowerCase := CHR(ORD(Ch) + 32)
    ELSE
      IF (Ch IN RusAlphabet) OR (Ch IN EngAlphabet)
      THEN
        toLowerCase := Ch
  END;
  
  PROCEDURE getWord(VAR FIn: TEXT; VAR Word: STRING);
  VAR
    Ch: CHAR;
  BEGIN
    Word := '';
    READ(FIn, Ch);
  
    Word := Ch;
    WHILE NOT EOLN(FIn) AND (Ch NOT IN RusAlphabet AND Ch NOT IN EngAlphabet) 
    DO
      BEGIN
        READ(FIn, Ch);
      
        Word := Word + Ch
      END;
  END;
BEGIN
END.
