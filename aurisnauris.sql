--
-- PostgreSQL database dump
--

\restrict P6DaZCc2Kuc5d3JK5vwjY4slxABzJ4Lim3MlGynVJg0whWdGuv4VYks67A8xDRI

-- Dumped from database version 17.12 (Debian 17.12-0+deb13u1)
-- Dumped by pg_dump version 17.12 (Debian 17.12-0+deb13u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dogs; Type: TABLE; Schema: public; Owner: aurisnauris
--

CREATE TABLE public.dogs (
    id integer NOT NULL,
    name character varying(200)
);


ALTER TABLE public.dogs OWNER TO aurisnauris;

--
-- Name: dogs_id_seq; Type: SEQUENCE; Schema: public; Owner: aurisnauris
--

CREATE SEQUENCE public.dogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dogs_id_seq OWNER TO aurisnauris;

--
-- Name: dogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aurisnauris
--

ALTER SEQUENCE public.dogs_id_seq OWNED BY public.dogs.id;


--
-- Name: dogs id; Type: DEFAULT; Schema: public; Owner: aurisnauris
--

ALTER TABLE ONLY public.dogs ALTER COLUMN id SET DEFAULT nextval('public.dogs_id_seq'::regclass);


--
-- Data for Name: dogs; Type: TABLE DATA; Schema: public; Owner: aurisnauris
--

COPY public.dogs (id, name) FROM stdin;
1	Hermanni
2	Kyllikki
3	Kimmo
\.


--
-- Name: dogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aurisnauris
--

SELECT pg_catalog.setval('public.dogs_id_seq', 3, true);


--
-- Name: dogs dogs_pkey; Type: CONSTRAINT; Schema: public; Owner: aurisnauris
--

ALTER TABLE ONLY public.dogs
    ADD CONSTRAINT dogs_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict P6DaZCc2Kuc5d3JK5vwjY4slxABzJ4Lim3MlGynVJg0whWdGuv4VYks67A8xDRI

