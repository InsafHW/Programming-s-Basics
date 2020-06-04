PROGRAM Encryption(INPUT, OUTPUT);
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF 'A' .. 'Z';
  Chiper = ARRAY ['A' .. 'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  I: INTEGER;
  StrLength: 1 .. Len;
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
  Code['Z'] := 'A'
END;  {Initialize}
 
PROCEDURE Encode(VAR S: Str; Length: INTEGER);
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  FOR Index := 1 TO Length
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
  Initialize(Code);
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
      Encode(Msg, Len)
    END
END.  {Encryption}
