-- Wybierz imiona, pensje i stanowisko wszystkich pracowników którzy: albo mają imię zaczynające się na literę T i zarabiają między 1500 a 2000, albo są analitykami.
SELECT ename, sal, job
FROM emp
WHERE ename LIKE 'T%' AND sal BETWEEN 1500 AND 2000
   OR job = 'ANALYST'
    /
