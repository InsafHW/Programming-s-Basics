UNIT WordModule;
INTERFACE
  CONST
    RusAlphabet = ['à' .. 'ÿ', 'À' .. 'ß', 'E', 'e', '¨', '¸'];
    EngAlphabet = ['a' .. 'z', 'A' .. 'Z'];
    UpperLetters = ['À' .. 'ß', 'A' .. 'Z'];
  FUNCTION toLowerCase(VAR Ch: CHAR): CHAR;
  PROCEDURE GetWord(VAR FIn: TEXT; VAR Word: STRING);
  
IMPLEMENTATION
 FUNCTION toLowerCase(VAR Ch: CHAR): CHAR;
 VAR
   TempCh: CHAR;
 BEGIN
   TempCh := Ch;
   IF (TempCh = '¸') OR (TempCh = '¨')
   THEN
     TempCh := 'å';
   IF (TempCh IN RusAlphabet) OR (TempCh IN EngAlphabet)
   THEN    
   BEGIN
     IF (TempCh IN UpperLetters)
     THEN
       TempCh := CHR(ORD(TempCh) + 32)
     ELSE
       TempCh := TempCh
     END;  
    toLowerCase := TempCh   
  END;
   
  PROCEDURE GetWord(VAR FIn: TEXT; VAR Word: STRING);
  VAR
    Ch: CHAR;
    IsEndOfWord: BOOLEAN;
  BEGIN {GetLexem}
    Word := '';
    IsEndOfWord := FALSE;
    WHILE NOT (EOLN(FIn) OR IsEndOfWord)
    DO
      BEGIN
        READ(FIn, Ch);
        toLowerCase(Ch);
        IF (Ch IN RusALphabet) OR (Ch IN EngAlphabet)
        THEN
          Word := Word + Ch
        ELSE
          IsEndOfWord := TRUE
      END; 
  END;
 
BEGIN
END.
