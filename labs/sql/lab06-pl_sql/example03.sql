CREATE OR REPLACE FUNCTION policz_pracownikow(departament NUMBER) RETURN NUMBER IS 
  retval NUMBER;
BEGIN
  SELECT COUNT(*) asd INTO retval 
  FROM emp WHERE deptno = departament;
  
  RETURN retval;
END;
/
