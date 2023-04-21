CREATE FUNCTION transaction_delete() RETURNS trigger AS $transaction_delete$
    BEGIN
        UPDATE budget_value SET value =value - OLD.amount WHERE budget_value.budget_id = OLD.budget_id;
        RETURN NULL;
    END;
$transaction_delete$ LANGUAGE plpgsql;

CREATE TRIGGER transaction_delete AFTER DELETE ON transaction
    FOR EACH ROW EXECUTE FUNCTION transaction_delete();