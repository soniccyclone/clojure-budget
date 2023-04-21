-- Table: public.surplus_budget

-- DROP TABLE IF EXISTS public.surplus_budget;

CREATE TABLE IF NOT EXISTS public.surplus_budget
(
    user_id bigint NOT NULL,
    budget_id bigint,
    CONSTRAINT surplus_budget_pkey PRIMARY KEY (user_id),
    CONSTRAINT fk_budget_id FOREIGN KEY (budget_id)
        REFERENCES public.budget (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id)
        REFERENCES public."user" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.surplus_budget
    OWNER to root;