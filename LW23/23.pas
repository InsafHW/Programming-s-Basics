PROGRAM InsertSort2 (INPUT, OUTPUT);
TYPE 
  NodePtr = ^Node;
  Node = RECORD
           Next: NodePtr;
           Key: CHAR
         END;
VAR
  FirstPtr, NewPtr, Curr, Prev: NodePtr;
  Found: BOOLEAN;
BEGIN {InsertSort2}
  FirstPtr := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      NEW(NewPtr);
      READ(NewPtr^.Key);
      Prev := NIL;
      {Поместить NewPtr в надлежащее место}
      Curr := FirstPtr;
      Found := FALSE;
      {Найдем значения Prev и Curr, такие что Prev^.Key <= NewPtr^.Key <= Curr^.Key}
      WHILE (Curr <> NIL) AND (NOT Found)
      DO
        BEGIN
          IF NewPtr^.Key >= Curr^.Key
          THEN
            BEGIN
              Prev := Curr;
              Curr := Curr^.Next
            END
          ELSE
            Found := TRUE
        END;
      NewPtr^.Next := Curr;
      IF Prev = NIL
      THEN
        FirstPtr := NewPtr
      ELSE
        Prev^.Next := NewPtr;
    END;
  {Печать значений начиная с FirstPtr^.Key}
  NewPtr := FirstPtr;
  WHILE NewPtr <> NIL
  DO
    BEGIN
      WRITE(NewPtr^.Key);
      NewPtr := NewPtr^.Next
    END
END. {InsertSotr2}
