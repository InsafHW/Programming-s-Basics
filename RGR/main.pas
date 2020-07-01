PROGRAM Rgr(INPUT, OUTPUT);
USES wordModule, windows;
VAR
  CurrentWord: STRING;
  Ch: CHAR;
  FIn, FOut: TEXT;

BEGIN
  ASSIGN(FIn, 'fin.txt');
  ASSIGN(FOut, 'fout.txt');
  RESET(FIn);
  REWRITE(FOut);
  getWord(FIn, CurrentWord);
  WRITELN(FOut, CurrentWord);
  
END.  
          
       
