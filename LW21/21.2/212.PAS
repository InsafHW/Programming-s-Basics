PROGRAM Encryption(INPUT, OUTPUT);
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF 'A' .. 'Z';
  Chiper = ARRAY [' ' .. 'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  LenStr: 0 .. Len;
  ChiperFile: TEXT;
PROCEDURE Initialize(VAR FIn: TEXT; VAR Code: Chiper);
VAR
  Ch1, Ch2: CHAR;
BEGIN
  RESET(FIn);
  WHILE NOT EOLN(FIn)
  DO
    BEGIN
      READ(FIn, Ch1);
      READ(FIn, Ch2);
      WHILE (Ch2 = ' ')
      DO
        READ(FIn, Ch2);
      Code[Ch1] := Ch2;
      READLN(FIn)
    END
END;{Initialize}

PROCEDURE Encode(VAR S: Str; LenStr: INTEGER);
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  FOR Index := 1 TO LenStr
  DO
    IF S[Index] IN [' ' .. 'Z']
    THEN
      WRITE(Code[S[Index]])
    ELSE
      WRITE(S[Index]);
  WRITELN
END; {Encode}

BEGIN{Encryption}
  ASSIGN(ChiperFile, 'Chiper.txt');
  Initialize(ChiperFile, Code);
  WHILE NOT EOF
  DO
    BEGIN
      LenStr := 0;
      WHILE NOT EOLN AND (LenStr < Len)
      DO
        BEGIN
          LenStr := LenStr + 1;
          READ(Msg[LenStr]);
          WRITE(Msg[LenStr])
        END;
      READLN;
      WRITELN;
      Encode(Msg, LenStr)
    END
END.
  
