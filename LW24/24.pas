PROGRAM TreeSort(INPUT, OUTPUT);
TYPE
  Tree = ^Node;
  Node = RECORD
           Ch: CHAR;
           LLink, RLink: Tree;
         END;
VAR
  Root: Tree;
  Ch: CHAR;
  
PROCEDURE Insert(VAR Ptr: Tree; Data: CHAR);
BEGIN{Insert}
  IF Ptr = NIL
  THEN
    BEGIN {Создаем лист со значением Data} 
      NEW(Ptr);
      Ptr^.Ch := Data;
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL
    END
  ELSE
    BEGIN 
      IF Data <= Ptr^.Ch
      THEN
        Insert(Ptr^.LLink, Data)
      ELSE
        Insert(Ptr^.RLink, Data)
     END  
END;

PROCEDURE PrintTree(VAR Ptr: Tree);
BEGIN{PrintTree}
  IF Ptr <> NIL
  THEN {Печатает поддерево слева, вершину, поддерево справа}
    BEGIN
      PrintTree(Ptr^.LLink);
      WRITE(Ptr^.Ch);
      PrintTree(Ptr^.RLink)
    END
END;{PrintTree}
  
BEGIN{TreeSort}
  Root := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Insert(Root, Ch)
    END;
  PrintTree(Root)
END.{TreeSort}
