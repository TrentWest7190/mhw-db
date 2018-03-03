-- Table: public.elements

DROP TABLE IF EXISTS public.elements;

CREATE TABLE public.elements
(
    ele_id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT elements_pkey PRIMARY KEY (ele_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

-- Table: public.status_effects

DROP TABLE IF EXISTS public.status_effects;

CREATE TABLE public.status_effects
(
    status_id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT status_effects_pkey PRIMARY KEY (status_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.status_effects
    OWNER to postgres;

-- Table: public.weapon_types

DROP TABLE IF EXISTS public.weapon_types;

CREATE TABLE public.weapon_types
(
    wep_type_id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT weapon_types_pkey PRIMARY KEY (wep_type_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.weapon_types
    OWNER to postgres;

-- Table: public.weapons

DROP TABLE IF EXISTS public.weapons;

CREATE TABLE public.weapons
(
    wep_id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    attack integer NOT NULL,
    true_attack integer NOT NULL,
    element_type integer,
    element_value integer,
    needs_awakening boolean NOT NULL,
    rarity integer NOT NULL,
    affinity integer NOT NULL,
    wep_type_id integer NOT NULL,
    status_type integer NOT NULL,
    status_value integer NOT NULL,
    CONSTRAINT weapons_pkey PRIMARY KEY (wep_id),
    CONSTRAINT weapons_element_type_fkey FOREIGN KEY (element_type)
        REFERENCES public.elements (ele_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.weapons
    OWNER to postgres;

-- Table: public.weapons_sharpness

DROP TABLE IF EXISTS public.weapons_sharpness;

CREATE TABLE public.weapons_sharpness
(
    wep_id integer NOT NULL,
    handicraft_level integer NOT NULL,
    red integer,
    orange integer,
    yellow integer,
    green integer,
    blue integer,
    white integer,
    CONSTRAINT weapons_sharpness_pkey PRIMARY KEY (wep_id, handicraft_level),
    CONSTRAINT weapons_sharpness_wep_id_fkey FOREIGN KEY (wep_id)
        REFERENCES public.weapons (wep_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT weapons_sharpness_handicraft_level_check CHECK (handicraft_level >= 0),
    CONSTRAINT weapons_sharpness_handicraft_level_check1 CHECK (handicraft_level <= 5)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.weapons_sharpness
    OWNER to postgres;

-- Table: public.weapons_slots

DROP TABLE IF EXISTS public.weapons_slots;

CREATE TABLE public.weapons_slots
(
    wep_id integer NOT NULL,
    slot_level integer NOT NULL,
    CONSTRAINT weapons_slots_pkey PRIMARY KEY (wep_id),
    CONSTRAINT weapons_slots_wep_id_fkey FOREIGN KEY (wep_id)
        REFERENCES public.weapons (wep_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT weapons_slots_slot_level_check CHECK (slot_level > 0),
    CONSTRAINT weapons_slots_slot_level_check1 CHECK (slot_level <= 3)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.weapons_slots
    OWNER to postgres;