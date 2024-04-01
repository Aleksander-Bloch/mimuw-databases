--Dla każdego eliksiru wypisz maksymalną liczbę składników występujących z nim w jednym przepisie. 
--Dla eliksirów, które nie są użyte w żadnym przepisie, należy wypisać 0.

--Aleksander Bloch, 417519, grupa 4, baza Oracle

SELECT nazwa, NVL(MAX(liczba_skladnikow) - 1, 0) AS maks_liczba_skladnikow
FROM (
    SELECT nazwa, eliksir
    FROM eliksir
    LEFT JOIN przepis
    ON nazwa = skladnik
) A
LEFT JOIN (
    SELECT eliksir, COUNT(skladnik) AS liczba_skladnikow
    FROM przepis
    GROUP BY eliksir
) B
ON A.eliksir = B.eliksir
GROUP BY nazwa
;
