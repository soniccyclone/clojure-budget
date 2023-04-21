-- Table: public.budget_value

-- DROP TABLE IF EXISTS public.budget_value;

CREATE TABLE IF NOT EXISTS public.budget_value
(
    budget_id bigint NOT NULL,
    value money,
    CONSTRAINT budget_value_pkey PRIMARY KEY (budget_id),
    CONSTRAINT fk_budget_id FOREIGN KEY (budget_id)
        REFERENCES public.budget (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.budget_value
    OWNER to root;