-- Wypisz wszystkich pracowników którzy mają "pod sobą" SALESMANa

SELECT DISTINCT CONNECT_BY_ROOT ename AS sales_mgr
FROM emp
WHERE job = 'SALESMAN'
    START
WITH job = 'MANAGER'
CONNECT BY PRIOR empno = mgr;
