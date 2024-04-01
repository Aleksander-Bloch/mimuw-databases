-- Który pracownik pracuje w firmie najdłużej?
SELECT E1.ename
FROM emp E1
         LEFT JOIN emp E2
                   ON E1.hiredate > E2.hiredate
WHERE E2.ename IS NULL
;