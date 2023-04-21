-- Table: public.budget_value

-- DROP TABLE IF EXISTS public.budget_value;

CREATE TABLE IF NOT EXISTS public.budget_value
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    value money,
    CONSTRAINT budget_value_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.budget_value
    OWNER to root;