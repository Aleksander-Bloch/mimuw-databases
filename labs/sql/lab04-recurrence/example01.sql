SELECT empno, ename, PRIOR ename AS mgr_ename, LEVEL 
FROM emp
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr;