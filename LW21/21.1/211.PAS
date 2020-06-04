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

PROCEDURE Initialize(VAR Code: Chiper);
BEGIN {Initialize}
  Code['A'] := 'Z';
  Code['B'] := 'Y';
  Code['C'] := 'X';
  Code['D'] := 'W';
  Code['E'] := 'V';
  Code['F'] := 'U';
  Code['G'] := 'T';
  Code['H'] := 'S';
  Code['I'] := 'R';
  Code['J'] := 'Q';
  Code['K'] := 'P';
  Code['L'] := 'O';
  Code['M'] := 'N';
  Code['N'] := 'M';
  Code['O'] := 'L';
  Code['P'] := 'K';
  Code['Q'] := 'J';
  Code['R'] := 'I';
  Code['S'] := 'H';
  Code['T'] := 'G';
  Code['U'] := 'F';
  Code['V'] := 'E';
  Code['W'] := 'D';
  Code['X'] := 'C';
  Code['Y'] := 'B';
  Code['Z'] := 'A';
  Code[' '] := '*'
END;  {Initialize}

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
END;  {Encode}

BEGIN {Encryption}
  Initialize(Code);
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
END.  {Encryption}
