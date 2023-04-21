CREATE FUNCTION transaction_insert() RETURNS trigger AS $transaction_insert$
    BEGIN
        UPDATE budget_value
        SET budget_value.value = budget_value.value + NEW.value
        WHERE budget_value.id = NEW.budget_id;
    END;
$transaction_insert$ LANGUAGE plpgsql;

CREATE TRIGGER transaction_insert AFTER INSERT ON [transaction]
    FOR EACH ROW EXECUTE FUNCTION transaction_insert();