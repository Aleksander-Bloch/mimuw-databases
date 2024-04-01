-- Wybierz wszystkich pracowników i dla każdego wypisz w dodatkowej kolumnie o nazwie 'starszy' 1 jeżeli ma wcześniejsze id niż jego szef, 0 jeżeli ma późniejsze, oraz '-1' jeżeli nie ma szefa.
SELECT emp.*,
       CASE
           WHEN empno < mgr THEN 1
           WHEN empno > mgr THEN 0
           ELSE -1
           END AS starszy
FROM emp /
