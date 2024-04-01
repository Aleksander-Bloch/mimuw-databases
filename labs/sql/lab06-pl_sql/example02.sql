CREATE PROCEDURE wypisz_pensje(departament NUMBER) IS 
  zarabia VARCHAR2(10) := ' zarabia ';
BEGIN
  FOR row IN (SELECT * FROM emp) LOOP
    IF row.deptno IS NOT NULL AND row.deptno = departament THEN
      dbms_output.put_line(row.ename || zarabia || row.sal);
    END IF;
  END LOOP;
END;
/
