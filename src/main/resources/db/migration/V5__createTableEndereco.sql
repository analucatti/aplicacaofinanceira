-- Table: public.endereco

-- DROP TABLE public.endereco;

CREATE TABLE public.endereco
(
    endereco_id bigint NOT NULL,
    bairro character varying(255) COLLATE pg_catalog."default" NOT NULL,
    cep character varying(9) COLLATE pg_catalog."default" NOT NULL,
    complemento character varying(255) COLLATE pg_catalog."default",
    logradouro character varying(255) COLLATE pg_catalog."default" NOT NULL,
    numero integer NOT NULL,
    cidade_id bigint NOT NULL,
    cliente_id bigint,
    CONSTRAINT endereco_pkey PRIMARY KEY (endereco_id),
    CONSTRAINT fk8b1kcb3wucapb8dejshyn5fsx FOREIGN KEY (cidade_id)
        REFERENCES public.cidade (cidade_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk8s7ivtl4foyhrfam9xqom73n9 FOREIGN KEY (cliente_id)
        REFERENCES public.cliente (cliente_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT endereco_numero_check CHECK (numero >= 1)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.endereco
    OWNER to postgres;