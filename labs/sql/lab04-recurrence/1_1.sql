-- Wypisz wszystkich podwładnych KING'a bez niego

SELECT empno, ename, PRIOR ename AS mgr_ename
FROM emp
WHERE LEVEL != 1
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr
;
