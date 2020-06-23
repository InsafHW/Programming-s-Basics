PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0..100;
VAR
  WhichScore: 0 .. NumberOfScores;
  Student: 0 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
  StudentName: TEXT;
  
PROCEDURE ReadName(VAR FIn: TEXT; VAR FOut: TEXT);
VAR
  Ch: CHAR;
BEGIN{ReadName}
  RESET(FIn);
  IF NOT EOLN(FIn)
  THEN
    BEGIN
      READ(FIn, Ch);
      REWRITE(FOut);
      WRITE(FOut, Ch)
    END;
  WHILE NOT EOLN(FIn) AND (Ch <> ' ')
  DO
    BEGIN
      READ(FIn, Ch);
      WRITE(FOut, Ch)
    END
END;{ReadName}

PROCEDURE WriteName(VAR FIn: TEXT; VAR FOut: TEXT);
VAR
  Ch: CHAR;
BEGIN{WriteName} 
  RESET(FIn);
  WHILE NOT EOLN(FIn) 
  DO
    BEGIN
      READ(FIn, Ch);
      WRITE(FOut, Ch)
    END
END;{WriteName}

BEGIN{AverageScores}
  ClassTotal := 0;
  Student := 0;
  WRITELN('Enter students names and their scores:');
  WHILE Student < ClassSize
  DO
    BEGIN
      ReadName(INPUT, StudentName);
      TotalScore := 0;
      WhichScore := 0;
      WHILE WhichScore < NumberOfScores
      DO
        BEGIN
          READ(NextScore);
          IF (NextScore < 0) OR (NextScore > 100)
          THEN
            WRITE('Input error, score is out of border, write correct score: ')
          ELSE
            BEGIN
              TotalScore := TotalScore + NextScore;
              WhichScore := WhichScore + 1
            END
        END;
     READLN;
     TotalScore := TotalScore * 10;
     Ave := TotalScore DIV NumberOfScores;
     ClassTotal := ClassTotal + TotalScore;
     Student := Student + 1;
     WriteName(StudentName, OUTPUT);
     IF Ave MOD 10 >= 5
     THEN
       WRITELN(' ', Ave DIV 10 + 1)
     ELSE
       WRITELN(' ', Ave DIV 10)
    END;
  WRITELN;
  WRITELN ('Class average:');
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
END.  {AverageScore}
