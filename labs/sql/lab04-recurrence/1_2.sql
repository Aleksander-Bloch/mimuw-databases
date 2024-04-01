-- Wypisz wszystkich podwładnych KING'a bez BLAKE'a i jego podwładnych

SELECT empno, ename, PRIOR ename AS mgr_ename
FROM emp
WHERE LEVEL != 1 AND ename != 'BLAKE'
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr AND PRIOR ename != 'BLAKE'
;
