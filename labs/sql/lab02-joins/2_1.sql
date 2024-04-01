-- W jakim mieście pracują sprzedawcy (salesman)?
SELECT D.loc
FROM dept D
WHERE D.deptno
          IN
      (SELECT DISTINCT E.deptno
       FROM emp E
       WHERE E.job = 'SALESMAN');