UNIT TreeModule;
INTERFACE
TYPE
  Tree = ^Node;
  Node = RECORD
           Key: STRING;
           Count: INTEGER;
           LLink, RLink: Tree
         END;
PROCEDURE InsertTree(VAR Ptr: Tree; Data: STRING);
PROCEDURE PrintTree(VAR Ptr: Tree);
PROCEDURE ClearTree(Ptr: Tree);

IMPLEMENTATION
  PROCEDURE InsertTree(VAR Ptr: Tree; Data: STRING);
  BEGIN {Insert}
    IF Ptr = NIL
    THEN
      BEGIN {Создаем лист со значением Data}
        NEW(Ptr);
        Ptr^.Key := Data;
        Ptr^.LLink := NIL;
        Ptr^.RLink := NIL;
        Ptr^.Count := 1
      END
    ELSE
      IF Ptr^.Key = Data
      THEN
        BEGIN
          Ptr^.Count := Ptr^.Count + 1
        END
      ELSE
        IF Ptr^.Key > Data
        THEN
          InsertTree(Ptr^.LLink, Data)
        ELSE
          InsertTree(Ptr^.RLink, Data)
  END; {Insert}
  
  PROCEDURE PrintTree(VAR Ptr: Tree);
  BEGIN {PrintTree}
    IF Ptr <> NIL
    THEN {Печатает поддерево слева, вершину, поддерево справа}
      BEGIN
        PrintTree(Ptr^.LLink);
        WRITELN(Ptr^.Key, ' ', Ptr^.Count);
        PrintTree(Ptr^.RLink)
      END
  END; {PrintTree}
  
  PROCEDURE ClearTree(Ptr: Tree);
  BEGIN {ClearTree}
    IF Ptr <> NIL
    THEN  {Печатает поддерево слева, вершину, поддерево справа}
      BEGIN
        ClearTree(Ptr^.LLink);
        DISPOSE(Ptr);
        ClearTree(Ptr^.RLink);
      END
  END;  {ClearTree}
  
BEGIN
END.
