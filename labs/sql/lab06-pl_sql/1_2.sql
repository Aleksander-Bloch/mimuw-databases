-- Napisz procedurę, która policzy maksymalną pensję w zadanym (przez parametr) dziale bez użycia funkcji agregujących.

CREATE OR REPLACE PROCEDURE max_sal2(department NUMBER) IS
    max_sal NUMBER := 0;
BEGIN
    FOR row IN (SELECT * FROM emp WHERE deptno IS NOT NULL AND deptno = department) LOOP
        IF row.sal > max_sal THEN
            max_sal := row.sal;
        END IF;
    END LOOP;
    dbms_output.put_line(max_sal);
END;
/
            

