CREATE TABLE public.banco
(
    banco_id bigint NOT NULL,
    cnpj character varying(14) COLLATE pg_catalog."default" NOT NULL,
    nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    numero integer NOT NULL,
    CONSTRAINT banco_pkey PRIMARY KEY (banco_id),
    CONSTRAINT uk_6u2hx0c6lv270oc9356anr9jk UNIQUE (numero)
,
    CONSTRAINT banco_numero_check CHECK (numero >= 1)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.banco
    OWNER to postgres;