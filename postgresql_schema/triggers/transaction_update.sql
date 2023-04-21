CREATE FUNCTION transaction_update() RETURNS trigger AS $transaction_update$
    BEGIN
        UPDATE budget_value
        SET budget_value.value = budget_value.value + NEW.value - OLD.value
        WHERE budget_value.id = NEW.budget_id;
        RETURN NULL;
    END;
$transaction_update$ LANGUAGE plpgsql;

CREATE TRIGGER transaction_update AFTER INSERT ON transaction
    FOR EACH ROW EXECUTE FUNCTION transaction_update();