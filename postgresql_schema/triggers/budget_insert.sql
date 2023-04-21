CREATE FUNCTION budget_insert() RETURNS trigger AS $budget_insert$
    BEGIN
        INSERT INTO budget_value (budget_id, value) VALUES (NEW.id, 0.00);
    END;
$budget_insert$ LANGUAGE plpgsql;

CREATE TRIGGER budget_insert AFTER INSERT ON transaction
    FOR EACH ROW EXECUTE FUNCTION budget_insert();