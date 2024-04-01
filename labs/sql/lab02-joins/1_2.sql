-- Dla każdego pracownika podaj nazwisko jego przełożonego (lub NULL jeżeli nie ma szefa).
SELECT A.empno, A.ename, B.ename
FROM emp A
         LEFT JOIN emp B
                   ON A.mgr = B.empno
                       /
