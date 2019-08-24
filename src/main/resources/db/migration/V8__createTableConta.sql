CREATE TABLE public.conta
(
    tipo character varying(1) COLLATE pg_catalog."default" NOT NULL,
    conta_id bigint NOT NULL,
    data_de_abertura timestamp without time zone NOT NULL,
    numero integer NOT NULL,
    saldo real NOT NULL,
    agencia_id bigint NOT NULL,
    CONSTRAINT conta_pkey PRIMARY KEY (conta_id),
    CONSTRAINT uk_i0yefx3uy4mtik3ldcc9cu0a9 UNIQUE (numero)
,
    CONSTRAINT fktlb2q7ipxepjj5uq0aj6lxfgs FOREIGN KEY (agencia_id)
        REFERENCES public.agencia (agencia_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT conta_numero_check CHECK (numero >= 1)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.conta
    OWNER to postgres;