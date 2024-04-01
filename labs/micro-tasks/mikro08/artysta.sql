--Kontrakt -> Nagranie
--Kontrakt -> Artysta
--Artysta -> Pośrednik

--klucze: id_k, id_a, id_n, id_s

--id_k -> id_n
--id_k -> id_a
--id_n -> id_s
--id_a -> id_s
--id_a -> prowizja

DROP TABLE Kontrakt;
DROP TABLE Artysta;
DROP TABLE Nagranie;
DROP TABLE Studio;


CREATE TABLE Studio (
    id_s INTEGER PRIMARY KEY,
    nazwa VARCHAR(40) NOT NULL,
    adres VARCHAR(40) NOT NULL
);

CREATE TABLE Nagranie (
    id_n INTEGER PRIMARY KEY,
    gatunek VARCHAR(40) NOT NULL,
    id_s INTEGER NOT NULL REFERENCES Studio
);

CREATE TABLE Artysta (
    id_a INTEGER PRIMARY KEY,
    imie VARCHAR(40) NOT NULL,
    nazwisko VARCHAR(40) NOT NULL,
    id_s INTEGER NOT NULL REFERENCES Studio,
    cyrograf_p NUMBER(3, 2)
);

CREATE TABLE Kontrakt (
    id_s INTEGER PRIMARY KEY,
    rola VARCHAR(40) NOT NULL,
    poczatek DATE NOT NULL,
    koniec DATE NOT NULL,
    wynagrodzenie NUMBER(15, 2) NOT NULL,
    prowizja NUMBER(3, 2) NOT NULL,
    id_a INTEGER NOT NULL REFERENCES Artysta,
    id_n INTEGER NOT NULL REFERENCES Nagranie
);
