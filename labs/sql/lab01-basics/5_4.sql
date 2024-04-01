-- Dla każdego pracownika wypisz kolumnę postaci "Józek (sprzedawca), WARSZAWA".
SELECT (INITCAP(ename) || ' (' || LOWER(job) || '), ' || UPPER(loc)) AS opis FROM emp
LEFT JOIN dept ON emp.deptno = dept.deptno
/
