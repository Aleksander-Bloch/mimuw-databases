--Praca A wpływa na pracę B jeśli: B cytuje A, lub B cytuje pracę, która cytuje A, lub B cytuje pracę, 
--która cytuje pracę, która cytuje A, itd. 
--Wypisz wszystkie prace cytowane choć raz, sortując je w kolejności malejącej liczby prac, na które wpłynęły. 
--(Należy założyć, że nie występują cykle cytowań.)

SELECT ma_wplyw AS wplywowy_tytul
FROM (
    SELECT CONNECT_BY_ROOT tytul_cytujaca AS pod_wplywem, tytul_cytowana AS ma_wplyw
    FROM cytowanie
    START WITH 1=1
    CONNECT BY PRIOR tytul_cytowana = tytul_cytujaca
)
GROUP BY ma_wplyw
ORDER BY COUNT(DISTINCT pod_wplywem) DESC
;
