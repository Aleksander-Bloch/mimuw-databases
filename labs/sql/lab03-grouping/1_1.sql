-- Dla każdego stanowiska wyznacz liczbę pracowników i średnią płacę

SELECT job, COUNT(empno) emp_num, AVG(sal) avg_sal
FROM emp
GROUP BY job
;