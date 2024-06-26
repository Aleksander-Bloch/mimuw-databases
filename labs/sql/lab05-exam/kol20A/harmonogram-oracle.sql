-- set lin 160;

-- DROP TABLE zalezy;
-- DROP TABLE zadanie;

CREATE TABLE zadanie (
  nazwa VARCHAR2(10) PRIMARY KEY, 
  projekt VARCHAR2(10) NOT NULL, 
  procent NUMBER(30),
  osoby NUMBER(2),
  poczatek DATE, 
  koniec DATE
);

CREATE TABLE zalezy (
  co VARCHAR2(10) REFERENCES zadanie,
  od VARCHAR2(10) REFERENCES zadanie,
  CONSTRAINT zalezy_pk PRIMARY KEY (co, od)
);

INSERT INTO zadanie VALUES ('Baza','SKLEP', 50, 1, '15-JAN-2019', '15-MAR-2019');
INSERT INTO zadanie VALUES ('Backend','SKLEP', 50, 2, '1-FEB-2019', '15-MAR-2019');
INSERT INTO zadanie VALUES ('API', 'SKLEP', 30, 1, '1-APR-2019', '30-APR-2019');
INSERT INTO zadanie VALUES ('Frontend', 'SKLEP', 0, 3, '15-JUL-2019', '30-OCT-2019');
INSERT INTO zadanie VALUES ('WWW', 'SKLEP', 0, 2, '20-JUL-2019', '30-OCT-2019');

INSERT INTO zalezy VALUES ('API', 'Baza');
INSERT INTO zalezy VALUES ('API', 'Backend');
INSERT INTO zalezy VALUES ('Frontend', 'API');
INSERT INTO zalezy VALUES ('WWW', 'API');

INSERT INTO zadanie VALUES ('Logika','PASJANS', 100, 1, '1-JAN-2019', '30-JAN-2019');
INSERT INTO zadanie VALUES ('Grafika','PASJANS', 0, 1, '1-MAR-2019', '30-MAR-2019');

INSERT INTO zalezy VALUES ('Grafika', 'Logika');

COMMIT;
