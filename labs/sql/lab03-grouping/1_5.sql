-- Policz średnie zarobki w departamencie w którym pracuje szef wszystkich szefów (czyli osoba która nie ma szefa)

SELECT AVG(sal)
FROM emp
WHERE deptno = (SELECT deptno
                FROM emp
                WHERE mgr IS NULL)
GROUP BY deptno
;