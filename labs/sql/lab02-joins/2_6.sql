-- Który pracownik pracuje w firmie najdłużej?
SELECT E1.ename
FROM emp E1
WHERE E1.hiredate < ALL (SELECT E2.hiredate
                         FROM emp E2
                         WHERE E1.hiredate != E2.hiredate
    )
;