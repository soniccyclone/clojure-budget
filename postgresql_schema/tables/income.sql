-- Table: public.income

-- DROP TABLE IF EXISTS public.income;

CREATE TABLE IF NOT EXISTS public.income
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    name text COLLATE pg_catalog."default",
    amount money,
    timeframe_id bigint,
    CONSTRAINT income_pkey PRIMARY KEY (id),
    CONSTRAINT fk_timeframe_id FOREIGN KEY (timeframe_id)
        REFERENCES public.timeframe (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.income
    OWNER to root;