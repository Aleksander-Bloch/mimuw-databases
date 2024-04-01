-- Napisz procedurę, która będzie w pętli zwiększać wszystkim dwukrotnie zarobki dopóki nie będzie pracownika, który zarabia więcej niż 20000.

CREATE OR REPLACE PROCEDURE zwieksz_zarobki IS
BEGIN
    LOOP
        FOR row IN (SELECT * FROM emp) LOOP
            IF row.sal > 20000 THEN return; END IF;
        END LOOP;
        UPDATE emp SET sal = sal * 2;
    END LOOP;
END;
/
