-- Table: public.transaction

-- DROP TABLE IF EXISTS public.transaction;

CREATE TABLE IF NOT EXISTS public.transaction
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    budget_id bigint,
    amount money,
    date date,
    description text COLLATE pg_catalog."default",
    automated boolean,
    CONSTRAINT transaction_pkey PRIMARY KEY (id),
    CONSTRAINT fk_budget_id FOREIGN KEY (budget_id)
        REFERENCES public.budget (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.transaction
    OWNER to root;