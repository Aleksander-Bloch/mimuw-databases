-- Wypisz dla każdego pracownika sumę zarobków jego i jego podwładnych


SELECT ename, SUM(sal) AS cumulative_sum
FROM (SELECT CONNECT_BY_ROOT ename AS ename, sal
      FROM emp START WITH empno IS NOT NULL
      CONNECT BY PRIOR empno = mgr)
GROUP BY ename
;
