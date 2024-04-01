-- Dodaj do tabeli emp wyzwalacz, który nie pozwoli spowodować, że któryś departament będzie pusty albo większy niż dziesięcioosobowy.

CREATE OR REPLACE TRIGGER controlDepartmentSize
AFTER DELETE OR INSERT OR UPDATE ON emp
DECLARE
    dept_size NUMBER;
BEGIN
    FOR row IN (SELECT * FROM dept) LOOP
        SELECT COUNT(*) INTO dept_size
        FROM emp
        WHERE row.deptno = emp.deptno;

        IF dept_size = 0 OR dept_size > 10 THEN
            raise_application_error(-20000, 'ERROR: Size of each department has to be in range [1, 10]');
        END IF;
    END LOOP;
END;
/
