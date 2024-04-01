-- Znajdź numer pracownika który ma podwładnych w różnych działach

SELECT mgr emp_no
FROM emp
GROUP BY mgr
HAVING COUNT(DISTINCT deptno) > 1
;
