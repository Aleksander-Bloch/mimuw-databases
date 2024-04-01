-- Dla każdego departamentu z pracownikami wypisz ilu spośród nich ma prowizję (comm)

SELECT deptno, COUNT(comm) comm_count
FROM emp
GROUP BY deptno
;