UNIT Queue;
INTERFACE
  PROCEDURE EmptyQ; 
  PROCEDURE AddQ (VAR Elt : CHAR);
  PROCEDURE DelQ;
  PROCEDURE HeadQ(VAR Elt: CHAR);
  PROCEDURE WriteQ;
IMPLEMENTATION
  VAR
    Q, TEMP: TEXT;
  PROCEDURE CopyOpen(VAR F1, F2 :TEXT);
 {копириует строку из F1 в F2 без RESET или REWRITE;
  таким образом F1 должен быть готов дл€ чтени€,а F2 дл€ записи,
  но прошлые строки у этих файлов могут быть не пусты }
  VAR
    Ch: CHAR;
  BEGIN {CopyOpen}
    WHILE NOT EOLN (F1)
    DO
      BEGIN
        READ(F1, Ch);
        WRITE(F2, Ch)
      END
  END;{CopyOpen}
  PROCEDURE EmptyQ;
  BEGIN{EmptyQ}
    REWRITE(Q);
    WRITELN(Q);
    RESET(Q)
  END;{EmptyQ}
  PROCEDURE AddQ (VAR Elt : CHAR);
  {Q = <,x/,R>,где x строка » Elt = a -->
   Q = <,xa/,R> }
  VAR
    W1, W2: CHAR;
  BEGIN{AddQ}
    W1 := ' ';
    W2 := ' ';
    WHILE (W1 = ' ') AND (W2 = ' ')
    DO
      BEGIN
        


