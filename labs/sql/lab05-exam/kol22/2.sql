--Wypisz eliksiry, których cena jest co najmniej 50% wyższa niż sumaryczny koszt ich wytworzenia z bezpośrednich składników 
--(eliksirów, których nie da się wytworzyć, nie wypisuj).

--Aleksander Bloch, 417519, grupa 4, baza Oracle

SELECT nazwa
FROM eliksir
INNER JOIN (
    SELECT eliksir, SUM(ilosc * cena) AS sumaryczny_koszt
    FROM przepis
    LEFT JOIN eliksir
    ON skladnik = nazwa
    GROUP BY eliksir
)
ON nazwa = eliksir
AND cena > 1.5 * sumaryczny_koszt
;
