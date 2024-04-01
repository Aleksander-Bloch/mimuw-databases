-- Napisz procedurę, która policzy maksymalną pensję w zadanym (przez parametr) dziale.

CREATE PROCEDURE max_sal1(department NUMBER) IS
    max_sal NUMBER;
BEGIN
    SELECT MAX(sal) INTO max_sal
    FROM emp
    WHERE deptno IS NOT NULL AND deptno = department;
    dbms_output.put_line(max_sal);
END;
/
