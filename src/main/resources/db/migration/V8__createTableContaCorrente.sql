CREATE TABLE public.conta_corrente
(
    limite real NOT NULL,
    conta_id bigint NOT NULL,
    CONSTRAINT conta_corrente_pkey PRIMARY KEY (conta_id),
    CONSTRAINT fkr353ts9uri4tts2ovkwkjd3h8 FOREIGN KEY (conta_id)
        REFERENCES public.conta (conta_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT conta_corrente_limite_check CHECK (limite >= 0::double precision)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.conta_corrente
    OWNER to postgres;