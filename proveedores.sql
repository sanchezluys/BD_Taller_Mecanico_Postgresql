-- Table: public.proveedor_respuesto_vehiculo

-- DROP TABLE IF EXISTS public.proveedor_respuesto_vehiculo;

CREATE TABLE IF NOT EXISTS public.proveedor_respuesto_vehiculo
(
    id integer NOT NULL DEFAULT nextval('proveedor_respuesto_vehiculo_id_seq'::regclass),
    nombre character varying(30) COLLATE pg_catalog."default",
    direccion character varying(30) COLLATE pg_catalog."default",
    telefono integer,
    sitio_web character(50) COLLATE pg_catalog."default",
    nit integer,
    CONSTRAINT proveedor_respuesto_vehiculo_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.proveedor_respuesto_vehiculo
    OWNER to "Comfe_owner";

COMMENT ON TABLE public.proveedor_respuesto_vehiculo
    IS 'Información de los proveedores disponibles para abrir el negocio internacionalmente';
