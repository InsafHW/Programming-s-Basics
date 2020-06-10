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
 
PROCEDURE CopyName(VAR FIn: TEXT; VAR FOut: TEXT);
VAR
 Ch: CHAR;
BEGIN
  WHILE NOT EOLN(FIn)
  DO
    BEGIN
      READ(FIn, Ch);
      WRITE(FOut, Ch)
    END
END;

BEGIN{AverageScore}
  ClassTotal := 0;
  Student := 0;
  WHILE Student < ClassSize
  DO
    BEGIN
      WRITE('Enter student name: ');
      REWRITE(StudentName);
      CopyName(INPUT, StudentName);
      RESET(StudentName);
      WRITE('Enter student scores: ');   
      TotalScore := 0;
      WhichScore := 0;
      WHILE WhichScore < NumberOfScores
      DO
        BEGIN
          READ(NextScore);
          IF (NextScore < 0) OR (NextScore > 100)
          THEN
            WRITELN('Input error, score is out of border')
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
      RESET(StudentName);
      CopyName(StudentName, OUTPUT);
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
