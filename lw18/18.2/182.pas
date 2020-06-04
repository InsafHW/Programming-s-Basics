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
  Ch: CHAR;
  
PROCEDURE ReadName(VAR FIn: TEXT; VAR FOut: TEXT);
VAR
  Ch: CHAR;
BEGIN{ReadName}
  REWRITE(FOut);
  WHILE NOT EOLN(FIn)
  DO
    BEGIN
      READ(FIn, Ch);
      WRITE(FOut, Ch)
    END;
  WRITELN(FOut)
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
    END;
END;{WriteName}

BEGIN{AverageScore}
  ClassTotal := 0;
  Student := 0;
  WHILE Student < ClassSize
  DO
    BEGIN
      WRITELN('������ 䠬���� ��㤥��:');
      ReadName(INPUT, StudentName);
      READLN(INPUT);
      RESET(StudentName);
      WRITE('������ �業�� ��㤥��: ');   
      TotalScore := 0;
      WhichScore := 0;
      WHILE WhichScore < NumberOfScores
      DO
        BEGIN
          READ(NextScore);
          IF (NextScore < 0) OR (NextScore > 100)
          THEN
            WRITELN('�訡�� �����, ���� ��室�� �� �࠭���')
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
END.{AverageScore}
