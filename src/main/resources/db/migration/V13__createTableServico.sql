CREATE TABLE public.servico
(
    servico_id bigint NOT NULL,
    uri character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT servico_pkey PRIMARY KEY (servico_id),
    CONSTRAINT uk_d26oy7pax9738c17sx4dshjyq UNIQUE (uri)

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.servico
    OWNER to postgres;