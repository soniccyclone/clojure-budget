-- Table: public.timeframe

-- DROP TABLE IF EXISTS public.timeframe;

CREATE TABLE IF NOT EXISTS public.timeframe
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    name text COLLATE pg_catalog."default",
    CONSTRAINT timeframe_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.timeframe
    OWNER to root;