CREATE TABLE public.agencia
(
    agencia_id bigint NOT NULL,
    nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    numero integer NOT NULL,
    banco_id bigint NOT NULL,
    endereco_id bigint NOT NULL,
    CONSTRAINT agencia_pkey PRIMARY KEY (agencia_id),
    CONSTRAINT uk_a6wc1pf3fom4s2p5o96co7i5f UNIQUE (endereco_id)
,
    CONSTRAINT uk_tpemybbv5x2tepkpn2m6aoo6r UNIQUE (numero)
,
    CONSTRAINT fkgtow2yt2utgj9pjani4gyi56w FOREIGN KEY (endereco_id)
        REFERENCES public.endereco (endereco_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fkitd0jcpl1a6fqcn5acemi1e6l FOREIGN KEY (banco_id)
        REFERENCES public.banco (banco_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT agencia_numero_check CHECK (numero >= 1)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.agencia
    OWNER to postgres;