CREATE TABLE public.cliente
(
    tipo character varying(1) COLLATE pg_catalog."default" NOT NULL,
    cliente_id bigint NOT NULL,
    nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    status character varying(7) COLLATE pg_catalog."default" NOT NULL,
    cnpj character varying(14) COLLATE pg_catalog."default",
    cpf character varying(11) COLLATE pg_catalog."default",
    rg character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT cliente_pkey PRIMARY KEY (cliente_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.cliente
    OWNER to postgres;