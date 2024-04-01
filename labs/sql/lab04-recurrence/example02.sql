SELECT ename, CONNECT_BY_ROOT ename AS menago
FROM emp
START WITH job = 'MANAGER'
CONNECT BY PRIOR empno = mgr;