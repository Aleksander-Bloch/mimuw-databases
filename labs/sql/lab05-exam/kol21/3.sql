--wypisz wszystkich autorów w kolejności malejącej maksymalnej liczby cytowań ich pojedynczej pracy.

SELECT autor
FROM (
    SELECT autor, tytul, COUNT(DISTINCT tytul_cytujaca) AS liczba_cytowan
    FROM autorstwo
    LEFT JOIN cytowanie
    ON tytul = tytul_cytowana
    GROUP BY autor, tytul
)
GROUP BY autor
ORDER BY MAX(liczba_cytowan) DESC
;
