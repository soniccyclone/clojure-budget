-- Table: public.user

-- DROP TABLE IF EXISTS public."user";

CREATE TABLE IF NOT EXISTS public."user"
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    name text COLLATE pg_catalog."default",
    password text COLLATE pg_catalog."default",
    salt text COLLATE pg_catalog."default",
    budget_timeframe_id bigint NOT NULL DEFAULT 1,
    CONSTRAINT user_pkey PRIMARY KEY (id),
    CONSTRAINT fk_budget_timeframe FOREIGN KEY (budget_timeframe_id)
        REFERENCES public.timeframe (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET DEFAULT
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."user"
    OWNER to root;