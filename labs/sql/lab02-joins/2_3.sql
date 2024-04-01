-- Dla każdego pracownika podaj miasto w jakim pracuje jego przełożony (lub NULL jeżeli nie ma szefa).
SELECT E1.ename,
       (SELECT D.loc
        FROM dept D
        WHERE D.deptno =
              (SELECT E2.deptno
               FROM emp E2
               WHERE E1.mgr = E2.empno))
           AS mgr_loc
FROM emp E1
;