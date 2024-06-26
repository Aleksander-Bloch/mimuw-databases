DROP TABLE przepis;
DROP TABLE eliksir;

CREATE TABLE eliksir (
  nazwa VARCHAR2(30) PRIMARY KEY,
  cena NUMBER(3) NOT NULL
);	

CREATE TABLE przepis (
  eliksir VARCHAR2(30) REFERENCES eliksir(nazwa) NOT NULL,
  skladnik VARCHAR2(30) REFERENCES eliksir(nazwa) NOT NULL,
  ilosc NUMBER(3,1) NOT NULL,
  CONSTRAINT pk PRIMARY KEY (eliksir, skladnik)
);	

insert INTO eliksir VALUES ('sok z gumijagod', 4);
insert INTO eliksir VALUES ('wieczorna mgla', 20);
insert INTO eliksir VALUES ('napar z nietoperza', 10);
insert INTO eliksir VALUES ('wyciag z rogu jednorozca', 100);
insert INTO eliksir VALUES ('smocze lzy', 990);

insert INTO eliksir VALUES ('eliksir zdrowia', 200);
insert INTO eliksir VALUES ('czapka niewidka', 100);
insert INTO eliksir VALUES ('eliksir dlugowiecznosci', 400);

insert INTO przepis VALUES ('eliksir zdrowia', 'wyciag z rogu jednorozca', 1);
insert INTO przepis VALUES ('eliksir zdrowia', 'sok z gumijagod', 2);

insert INTO przepis VALUES ('eliksir dlugowiecznosci', 'eliksir zdrowia', 0.5);
insert INTO przepis VALUES ('eliksir dlugowiecznosci', 'smocze lzy', 0.2);

insert INTO przepis VALUES ('czapka niewidka', 'wieczorna mgla', 0.5);
insert INTO przepis VALUES ('czapka niewidka', 'wyciag z rogu jednorozca', 0.4);
insert INTO przepis VALUES ('czapka niewidka', 'sok z gumijagod', 0.1);
insert INTO przepis VALUES ('czapka niewidka', 'napar z nietoperza', 0.2);

COMMIT;
