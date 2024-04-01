-- Wypisz imiona oraz pensje wszystkich pracowników,
-- którzy nie mają zmiennika (osoby na tym samym stanowisku
-- w tym samym departamencie) i posortuj ich
-- według pensji malejąco.

SELECT ename, sal
FROM emp
WHERE (job, deptno) IN (
    SELECT job, deptno
    FROM emp
    GROUP BY job, deptno
    HAVING COUNT(*) = 1
)
ORDER BY sal desc
;
