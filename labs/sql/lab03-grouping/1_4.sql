-- Znajdź wszystkie miejsca w których rozpiętość pensji w tym samym departamencie na tym samym stanowisku przekracza 300 (nie da się bez tabeli dept, bo tam są miejsca).
SELECT loc
FROM dept
WHERE deptno = (SELECT deptno
                FROM emp
                GROUP BY job, deptno
                HAVING (MAX(sal) - MIN(sal)) > 300)
;