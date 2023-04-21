CREATE FUNCTION transaction_insert() RETURNS trigger AS $transaction_insert$
    BEGIN
        UPDATE budget_value SET value = value + NEW.amount WHERE budget_value.budget_id = NEW.budget_id;
        RETURN NULL;
    END;
$transaction_insert$ LANGUAGE plpgsql;

CREATE TRIGGER transaction_insert AFTER INSERT ON transaction
    FOR EACH ROW EXECUTE FUNCTION transaction_insert();