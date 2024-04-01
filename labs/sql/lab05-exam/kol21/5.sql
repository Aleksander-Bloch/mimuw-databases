--Dla każdego autora wylicz największą taką dodatnią liczbę N, że dany autor ma co najmniej 
--N prac cytowanych dokładnie N razy. 
--Jeśli żadna taka liczba N nie istnieje, to nie wypisuj danego autora wcale.

SELECT autor, MAX(liczba_cytowan) AS N
FROM (
    SELECT autor, liczba_cytowan
    FROM (
        SELECT autor, tytul, COUNT(DISTINCT tytul_cytujaca) AS liczba_cytowan
        FROM autorstwo
        LEFT JOIN cytowanie
        ON tytul = tytul_cytowana
        GROUP BY autor, tytul
    )
    GROUP BY autor, liczba_cytowan
    HAVING COUNT(*) >= liczba_cytowan
)
GROUP BY autor
HAVING MAX(liczba_cytowan) > 0
;
