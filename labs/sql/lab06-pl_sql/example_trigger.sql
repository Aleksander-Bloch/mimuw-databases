CREATE OR REPLACE TRIGGER sprawdzWypozyczenia 
BEFORE INSERT OR UPDATE ON wypozyczenia
FOR EACH ROW
BEGIN
    IF :NEW.data_wypozyczenia IS NOT NULL AND :NEW.data_zwrotu IS NOT NULL THEN
      IF :NEW.data_wypozyczenia > :NEW.data_zwrotu THEN
        raise_application_error(-20000,'Data zwrotu musi być większa niż data wypożyczenia');
      END IF;
    END IF;
END;
/
