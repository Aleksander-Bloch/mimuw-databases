-- Wybierz numery wszystkich pracowników, którzy mają podwładnych, sortując je malejąco.
SELECT DISTINCT mgr AS empno
FROM emp
WHERE mgr IS NOT NULL
ORDER BY mgr DESC
    /
