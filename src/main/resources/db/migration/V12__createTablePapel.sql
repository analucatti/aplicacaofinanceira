CREATE TABLE public.papel
(
    papel_id bigint NOT NULL,
    nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT papel_pkey PRIMARY KEY (papel_id),
    CONSTRAINT uk_r0myf68c69dgjedxpdnbpdrhb UNIQUE (nome)

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.papel
    OWNER to postgres;