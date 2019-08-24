CREATE TABLE public.correntista
(
    cliente_id bigint NOT NULL,
    conta_id bigint NOT NULL,
    titularidade boolean NOT NULL,
    CONSTRAINT correntista_pkey PRIMARY KEY (cliente_id, conta_id),
    CONSTRAINT fk49sryqsfhkrg4wp8hljfxcani FOREIGN KEY (conta_id)
        REFERENCES public.conta (conta_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fknomwyhehljoekmral94m3eg0n FOREIGN KEY (cliente_id)
        REFERENCES public.cliente (cliente_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.correntista
    OWNER to postgres;