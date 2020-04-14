PROGRAM SortMonth(INPUT, OUTPUT);
USES DateIO;
VAR
  Mo: Month;
BEGIN{SortMonth}
  Mo := DEC;
  ReadMonth(INPUT, Mo);
  WriteMonth(OUTPUT, Mo)
END.
