-- W którym departamencie nikt nie pracuje?
SELECT DISTINCT D.deptno
FROM dept D
LEFT JOIN emp E
ON E.deptno = D.deptno
WHERE E.empno IS NULL
;