-- Table: public.budget

-- DROP TABLE IF EXISTS public.budget;

CREATE TABLE IF NOT EXISTS public.budget
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    user_id bigint,
    name text COLLATE pg_catalog."default",
    amount money,
    default_message text COLLATE pg_catalog."default",
    CONSTRAINT budget_pkey PRIMARY KEY (id),
    CONSTRAINT fk_user_id FOREIGN KEY (user_id)
        REFERENCES public."user" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.budget
    OWNER to root;