DECLARE
  data DATE := SYSDATE;
  i INT := 0;
  napis VARCHAR2(80);
BEGIN
  WHILE 10 > i LOOP
    dbms_output.put_line('while, i = ' || i);
    i := i+1;
  END LOOP;
  
  FOR i IN REVERSE 1..5 LOOP
    IF MOD(i, 2) = 0 THEN
      dbms_output.put_line('for, i: parzysta');
    ELSE
      dbms_output.put_line('for, i: nieparzysta');
    END IF;
  END LOOP;

  --ile jest rowne i? 1 czy 5?
  dbms_output.put_line('i: ' || i || '!');
  
  LOOP
    i:=i+1;
    IF i > 12 THEN EXIT; END IF;
    dbms_output.put_line('loop, i: wciaz mniejsze niz 12 (' || i || ')');
  END LOOP;
END;
/
