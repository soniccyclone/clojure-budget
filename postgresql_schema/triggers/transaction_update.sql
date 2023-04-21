CREATE FUNCTION transaction_update() RETURNS trigger AS $transaction_update$
    BEGIN
        UPDATE budget_value SET value = value + NEW.amount - OLD.amount WHERE budget_value.budget_id = NEW.budget_id;
        RETURN NULL;
    END;
$transaction_update$ LANGUAGE plpgsql;

CREATE TRIGGER transaction_update AFTER INSERT ON transaction
    FOR EACH ROW EXECUTE FUNCTION transaction_update();