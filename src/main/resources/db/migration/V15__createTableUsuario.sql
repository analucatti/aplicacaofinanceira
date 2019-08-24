CREATE TABLE public.usuario
(
    usuario_id bigint NOT NULL,
    nome_de_usuario character varying(255) COLLATE pg_catalog."default" NOT NULL,
    senha character varying(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT usuario_pkey PRIMARY KEY (usuario_id),
    CONSTRAINT uk_fx0ri256rx2ncf7wqvfmboglb UNIQUE (nome_de_usuario)

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.usuario
    OWNER to postgres;