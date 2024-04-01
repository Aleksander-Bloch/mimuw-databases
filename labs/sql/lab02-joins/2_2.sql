-- Dla każdego pracownika podaj nazwisko jego przełożonego (lub NULL jeżeli nie ma szefa).
SELECT E1.ename,
       (SELECT E2.ename FROM emp E2 WHERE E1.mgr = E2.empno) AS mgr_name
FROM emp E1
;