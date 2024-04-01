-- Znajdź maksymalną pensję na wszystkich stanowiskach na których pracuje co najmniej 3 pracowników zarabiających co najmniej 1000

SELECT job, MAX(sal) max_sal
FROM emp
WHERE sal >= 1000
GROUP BY job
HAVING COUNT(*) >= 3
;