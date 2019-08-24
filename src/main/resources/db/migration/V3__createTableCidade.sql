CREATE TABLE public.cidade
(
    cidade_id bigint NOT NULL,
    nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    estado_id bigint NOT NULL,
    CONSTRAINT cidade_pkey PRIMARY KEY (cidade_id),
    CONSTRAINT fkkworrwk40xj58kevvh3evi500 FOREIGN KEY (estado_id)
        REFERENCES public.estado (estado_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.cidade
    OWNER to postgres;