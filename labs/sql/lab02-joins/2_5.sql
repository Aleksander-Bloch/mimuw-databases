-- Dla każdego pracownika wypisz imię jego szefa jeżeli (ten szef) zarabia więcej niż 3000 (lub NULL jeżeli nie ma takiego szefa).
SELECT E1.ename,
       (SELECT E2.ename
        FROM emp E2
        WHERE E1.mgr = E2.empno
          AND E2.sal > 3000) mgr_name
FROM emp E1
;