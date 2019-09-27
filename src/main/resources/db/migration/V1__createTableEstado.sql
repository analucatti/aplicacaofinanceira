CREATE TABLE public.estado
(
    estado_id bigint NOT NULL,
    nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT estado_pkey PRIMARY KEY (estado_id),
    CONSTRAINT uk_gfot2y0318rs8hc74ppp0n87p UNIQUE (nome)

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.estado
    OWNER to postgres;