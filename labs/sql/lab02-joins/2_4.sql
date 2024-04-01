-- W którym departamencie nikt nie pracuje?
SELECT D.deptno
FROM dept D
WHERE D.deptno
          NOT IN
      (SELECT E.deptno
       FROM emp E)
;