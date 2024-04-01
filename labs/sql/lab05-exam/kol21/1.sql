--wypisz wszystkich autorów w kolejności malejącej łącznej liczby cytowań 
--ich wszystkich prac

SELECT autor
FROM autorstwo
LEFT JOIN cytowanie
ON tytul = tytul_cytowana
GROUP BY autor
ORDER BY COUNT(tytul_cytowana) DESC
;
