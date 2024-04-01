-- W jakim mieście pracują sprzedawcy (salesman)?
SELECT DISTINCT loc
FROM emp
         LEFT JOIN dept ON emp.deptno = dept.deptno
WHERE job = 'SALESMAN'
    /
