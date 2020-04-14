PROGRAM SortMonth(INPUT, OUTPUT);
USES DateIO;
VAR
  Mo1, Mo2: Month;
BEGIN{SortMonth}
  ReadMonth(INPUT, Mo1);
  ReadMonth(INPUT, Mo2);
  IF (Mo1 = NoMonth) OR (Mo2 = NoMonth)
  THEN
    WRITE('ÍÅÊÊÎÐÅÊÒÍÛÉ ÂÂÎÄ')
  ELSE
    BEGIN
      IF (Mo1 = Mo2)
      THEN
        BEGIN
          WRITE('Îבא לוסÿצא ');
          WriteMonth(OUTPUT, Mo1)
        END
      ELSE
        BEGIN
          WriteMonth(OUTPUT, Mo1);
          IF (Mo1 > Mo2)
          THEN
            WRITE(' סכוהףוע חא ')
          ELSE
            WRITE(' ןנוהרוסעגףוע ');
            WriteMonth(OUTPUT, Mo2)
        END
    END;
  WRITELN 
END.
