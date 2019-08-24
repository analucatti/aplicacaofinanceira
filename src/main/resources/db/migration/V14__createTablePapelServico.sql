CREATE TABLE public.papel_servico
(
    papel_id bigint NOT NULL,
    servico_id bigint NOT NULL,
    CONSTRAINT fkhkhc9djd1a4h2lqjnebjeb32f FOREIGN KEY (servico_id)
        REFERENCES public.servico (servico_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fkpajkmrcc8lgdabb2nphh192hv FOREIGN KEY (papel_id)
        REFERENCES public.papel (papel_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.papel_servico
    OWNER to postgres;