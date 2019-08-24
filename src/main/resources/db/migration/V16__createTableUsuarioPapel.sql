CREATE TABLE public.usuario_papel
(
    papel_id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    CONSTRAINT fk75psa5ndkgp28gqowe8em3n6q FOREIGN KEY (papel_id)
        REFERENCES public.papel (papel_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fkpwds94wb43d01jx8l62ukbd67 FOREIGN KEY (usuario_id)
        REFERENCES public.usuario (usuario_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.usuario_papel
    OWNER to postgres;