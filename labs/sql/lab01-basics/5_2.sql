-- Którzy pracownicy zostali zatrudnieni w 1982?
SELECT *
FROM emp
WHERE TO_CHAR(hiredate, 'YY') = 82
    /
