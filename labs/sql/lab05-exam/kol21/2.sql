--wypisz prace cytowane przez co najmniej 3 prace o co najmniej 3 cytowaniach.

SELECT c1.tytul_cytowana
FROM cytowanie c1
WHERE c1.tytul_cytujaca
IN (
    SELECT c2.tytul_cytowana
    FROM cytowanie c2
    HAVING COUNT(DISTINCT c2.tytul_cytujaca) >= 3
    GROUP BY c2.tytul_cytowana
)
HAVING COUNT(DISTINCT c1.tytul_cytujaca) >= 3
GROUP BY c1.tytul_cytowana
;
