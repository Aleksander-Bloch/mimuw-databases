-- Czy w tabeli emp zawarta jest informacja o której godzinie zostali zatrudnieni wszyscy pracownicy?
SELECT TO_CHAR(hiredate, 'HH24:MI:SS')
FROM emp /
