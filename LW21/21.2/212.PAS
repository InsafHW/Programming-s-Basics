PROGRAM Encryption(INPUT, OUTPUT);
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF 'A' .. 'Z';
  Chiper = ARRAY ['A' .. 'Z'] OF CHAR;
VAR
  FIn: TEXT;
  Msg: Str;
  Code: Chiper;
  I: INTEGER;
  StrLength: 1 .. Len;

PROCEDURE ReadDigit(VAR FileIn: TEXT; VAR Digit: INTEGER);
VAR
  Ch: CHAR;
BEGIN{ReadDigit}
  Digit := -1;
  IF NOT EOLN(FileIn)
  THEN
    BEGIN
      READ(FileIn, Ch);
      IF (Ch = '0') THEN Digit := 0 ELSE
      IF (Ch = '1') THEN Digit := 1 ELSE
      IF (Ch = '2') THEN Digit := 2 ELSE
      IF (Ch = '3') THEN Digit := 3 ELSE
      IF (Ch = '4') THEN Digit := 4 ELSE
      IF (Ch = '5') THEN Digit := 5 ELSE
      IF (Ch = '6') THEN Digit := 6 ELSE
      IF (Ch = '7') THEN Digit := 7 ELSE
      IF (Ch = '8') THEN Digit := 8 ELSE
      IF (Ch = '9') THEN Digit := 9
    END
END;{ReadDigit}
PROCEDURE ReadNumber(VAR FileIn: TEXT; VAR Number: INTEGER);
CONST
  MAXINT = 32768;
VAR
  Overflow: BOOLEAN;
  TempDigit: INTEGER;
BEGIN{ReadNumber}
  Overflow := FALSE;
  Number := 0;
  ReadDigit(FileIn, TempDigit);
  WHILE (TempDigit <> -1) AND (Number <> -1)
  DO
   BEGIN
     IF (Number <= MAXINT DIV 10) AND (MAXINT - Number * 10 >= TempDigit)             
     THEN
       Number := Number * 10 + TempDigit
     ELSE
       BEGIN
         Overflow := TRUE;
         Number := -1
       END;
     ReadDigit(FileIn, TempDigit)
   END;
END;{ReadNumber}

PROCEDURE Initialize(VAR FIn: TEXT; VAR Code: Chiper);
VAR
  Ch: CHAR;
  I: INTEGER;
BEGIN {Initialize}
  Ch := ' ';
  I := 0;
  WHILE NOT EOF(FIn)
  DO
    BEGIN
      WHILE NOT EOLN(FIn)
      DO
        BEGIN
          WHILE (Ch = ' ')
          DO
            BEGIN
              READ(FIn, Ch)
            END ;
          ReadDigit(FIn, I);
          Code[Ch] := I
      END;
    READLN(FIn)   
END;  {Initialize}
 
PROCEDURE Encode(VAR S: Str);
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  FOR Index := 1 TO StrLength
  DO
    IF S[Index] IN ['A' .. 'Z']
    THEN
      WRITE(Code[S[Index]])
    ELSE
      IF S[Index] = ' '
      THEN
        WRITE('*')
      ELSE
        WRITE(S[Index]);
  WRITELN
END;  {Encode}
 
BEGIN {Encryption}
  ASSIGN(FIn, 'Chiper.txt');
  Initialize(FIn, Code);
  WHILE NOT EOF(INPUT)
  DO
    BEGIN
      I := 0;  
      WHILE NOT EOLN(INPUT) AND (I < Len)
      DO
        BEGIN
          I := I + 1; 
          StrLength := I;
          READ(INPUT, Msg[I]);
          WRITE(OUTPUT, Msg[I])
        END;      
      READLN; 
      WRITELN;      
      Encode(Msg)
    END
END.  {Encryption}
