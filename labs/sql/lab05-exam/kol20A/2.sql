--Wypisz wszystkie projekty, które trwają dłużej niż łączna liczba osobo-dni składających się na nie zadań.

--1st. wypisz ile trwają projekty

-- SELECT projekt, MAX(koniec) - MIN(poczatek) AS ile_trwa_dni
-- FROM zadanie
-- GROUP BY projekt
-- ;

--2st. wypisz ile osobo-dni składa się na projekt

-- SELECT projekt, SUM(osoby * (koniec - poczatek)) AS osobo_dni
-- FROM zadanie
-- GROUP BY projekt
-- ;


--3st. połącz zapytania w jedno

SELECT projekt
FROM zadanie
HAVING MAX(koniec) - MIN(poczatek) > SUM(osoby * (koniec - poczatek))
GROUP BY projekt
;
