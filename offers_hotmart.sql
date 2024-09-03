CREATE TABLE IF NOT EXISTS public.ofertas_hotmart
(
    producer_name character varying(250) COLLATE pg_catalog."default",
    purchase_offer_code character varying(250) COLLATE pg_catalog."default" NOT NULL,
    product_name character varying(500) COLLATE pg_catalog."default" NOT NULL,
    product_id character varying(500) COLLATE pg_catalog."default",
    product_ucode character varying(500) COLLATE pg_catalog."default",
    product_has_co_production boolean,
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    CONSTRAINT id_pk_ofertas_hotmart PRIMARY KEY (id)
)

TABLESPACE pg_default;
