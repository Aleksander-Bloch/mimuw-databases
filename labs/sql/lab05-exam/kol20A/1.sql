--Wypisz zadania malejąco wg liczby zadań, od których bezpośrednio zależą; 
--w przypadku remisów wypisać alfabetycznie wg nazw.

--left join dla nazwa = co
--count nazwa

SELECT nazwa
FROM zadanie
LEFT JOIN zalezy
ON nazwa = co
GROUP BY nazwa
ORDER BY COUNT(co) DESC, nazwa ASC
;
