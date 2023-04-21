CREATE FUNCTION transaction_delete() RETURNS trigger AS $transaction_delete$
    BEGIN
        UPDATE budget_value
        SET budget_value.value = budget_value.value - OLD.value
        WHERE budget_value.id = OLD.budget_id;
    END;
$transaction_delete$ LANGUAGE plpgsql;

CREATE TRIGGER transaction_delete AFTER DELETE ON transaction
    FOR EACH ROW EXECUTE FUNCTION transaction_delete();