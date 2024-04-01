-- Dla każdego pracownika wypisz imię jego szefa jeżeli (ten szef) zarabia więcej niż 3000 (lub NULL jeżeli nie ma takiego szefa).
SELECT E1.ename pracownik, E2.ename szef
FROM emp E1
         LEFT JOIN emp E2
                   ON E1.mgr = E2.empno
                       AND E2.sal > 3000
;