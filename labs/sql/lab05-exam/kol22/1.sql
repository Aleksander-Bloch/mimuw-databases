--Wypisz nazwy wszystkich eliksirów kosztujących co najmniej 10, posortowanych malejąco według liczby przepisów, 
--w których występują jako składnik.

--Aleksander Bloch, 417519, grupa 4, baza Oracle

SELECT nazwa
FROM eliksir
LEFT JOIN przepis
ON nazwa = skladnik
WHERE cena >= 10
GROUP BY nazwa
ORDER BY COUNT(DISTINCT eliksir) DESC
;
