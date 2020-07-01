PROGRAM CountWords(INPUT, OUTPUT);
USES WordModule, TreeModule, Windows;
VAR
  Ch: CHAR;
  Word: STRING;
  Root: TREE;
  FIn, FOut: TEXT;

BEGIN
  Root := NIL;
  WHILE NOT EOF(INPUT)
  DO
    BEGIN
      GetWord(INPUT, Word);
      IF Word <> ''
      THEN
        InsertTree(Root, Word);
    END;
  PrintTree(Root);
  ClearTree(Root);
  WRITELN
END.

