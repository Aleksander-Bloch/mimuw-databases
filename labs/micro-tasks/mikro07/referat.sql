CREATE TABLE Praca (
    id_pracy NUMBER(4) PRIMARY KEY,
    tytul VARCHAR(50) NOT NULL,
    dziedzina VARCHAR(20) NOT NULL
);

CREATE TABLE Osoba (
    id_osoby NUMBER(4) PRIMARY KEY,
    imie VARCHAR(20) NOT NULL,
    nazwisko VARCHAR(20) NOT NULL
);

CREATE TABLE Sesja (
    id_sesji NUMBER(4) PRIMARY KEY,
    nazwa VARCHAR(50) NOT NULL,
    id_prowadzacego NUMBER(4) NOT NULL REFERENCES Osoba
);

CREATE TABLE Referat (
    id_referujacego NUMBER(4) NOT NULL REFERENCES Osoba,
    id_pracy NUMBER(4) UNIQUE NOT NULL REFERENCES Praca,
    id_sesji NUMBER(4) NOT NULL REFERENCES Sesja
);

CREATE TABLE Autorstwo (
    id_osoby NUMBER(4) REFERENCES Osoba,
    id_pracy NUMBER(4) REFERENCES Praca
);

CREATE OR REPLACE TRIGGER prowadzacyAutor
BEFORE INSERT OR UPDATE ON Referat
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(id_pracy) FROM Autorstwo
            WHERE Autorstwo.id_pracy = :new.id_pracy AND Autorstwo.id_osoby = :new.id_referujacego) = 0
    THEN
        ROLLBACK;
    END IF;
END;