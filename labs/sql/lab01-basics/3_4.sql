-- Wybierz imiona pracowników którzy nie mają szefów ('mgr'  to skrót od  'manager').
SELECT ename
FROM emp
WHERE mgr IS NULL
    /
