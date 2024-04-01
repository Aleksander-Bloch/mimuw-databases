-- Dla każdego pracownika podaj miasto w jakim pracuje jego przełożony (lub NULL jeżeli nie ma szefa).
SELECT E1.empno, E1.ename, D.loc AS mgr_loc
FROM emp E1
         LEFT JOIN emp E2
                   ON E1.mgr = E2.empno
         LEFT JOIN dept D
                   ON E2.deptno = D.deptno
;