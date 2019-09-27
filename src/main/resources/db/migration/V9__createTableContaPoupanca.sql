CREATE TABLE public.conta_poupanca
(
    correcao_monetaria real NOT NULL,
    data_de_aniversario timestamp without time zone NOT NULL,
    juros real NOT NULL,
    conta_id bigint NOT NULL,
    CONSTRAINT conta_poupanca_pkey PRIMARY KEY (conta_id),
    CONSTRAINT fkeq5v9543iwnal9gtv047hxg0b FOREIGN KEY (conta_id)
        REFERENCES public.conta (conta_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT conta_poupanca_correcao_monetaria_check CHECK (correcao_monetaria >= 0::double precision),
    CONSTRAINT conta_poupanca_juros_check CHECK (juros >= 0::double precision)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.conta_poupanca
    OWNER to postgres;