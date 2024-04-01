-- Dodaj do tabeli emp wyzwalacz, który nie pozwoli zwiększyć pensji więcej niż półtora raza.

CREATE OR REPLACE TRIGGER keepThemPoor
AFTER UPDATE OF sal ON emp
FOR EACH ROW
BEGIN
    IF :NEW.sal > 1.5 * :OLD.sal THEN
        raise_application_error(-20000, 'ERROR: Wage slaves cannot get 1.5x increase in salary!');
    END IF;
END;
/
