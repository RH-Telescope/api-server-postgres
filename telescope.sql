--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: capability; Type: TABLE; Schema: public; Owner: telescope
--

CREATE TABLE public.capability (
    id integer NOT NULL,
    domain_id integer,
    flag_id integer,
    description character varying(128),
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.capability OWNER TO telescope;

--
-- Name: capability_id_seq; Type: SEQUENCE; Schema: public; Owner: telescope
--

CREATE SEQUENCE public.capability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.capability_id_seq OWNER TO telescope;

--
-- Name: capability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telescope
--

ALTER SEQUENCE public.capability_id_seq OWNED BY public.capability.id;


--
-- Name: domain; Type: TABLE; Schema: public; Owner: telescope
--

CREATE TABLE public.domain (
    id integer NOT NULL,
    description character varying(128),
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.domain OWNER TO telescope;

--
-- Name: domain_id_seq; Type: SEQUENCE; Schema: public; Owner: telescope
--

CREATE SEQUENCE public.domain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domain_id_seq OWNER TO telescope;

--
-- Name: domain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telescope
--

ALTER SEQUENCE public.domain_id_seq OWNED BY public.domain.id;


--
-- Name: flag; Type: TABLE; Schema: public; Owner: telescope
--

CREATE TABLE public.flag (
    id integer NOT NULL,
    description character varying(128),
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.flag OWNER TO telescope;

--
-- Name: flag_id_seq; Type: SEQUENCE; Schema: public; Owner: telescope
--

CREATE SEQUENCE public.flag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flag_id_seq OWNER TO telescope;

--
-- Name: flag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telescope
--

ALTER SEQUENCE public.flag_id_seq OWNED BY public.flag.id;


--
-- Name: capability id; Type: DEFAULT; Schema: public; Owner: telescope
--

ALTER TABLE ONLY public.capability ALTER COLUMN id SET DEFAULT nextval('public.capability_id_seq'::regclass);


--
-- Name: domain id; Type: DEFAULT; Schema: public; Owner: telescope
--

ALTER TABLE ONLY public.domain ALTER COLUMN id SET DEFAULT nextval('public.domain_id_seq'::regclass);


--
-- Name: flag id; Type: DEFAULT; Schema: public; Owner: telescope
--

ALTER TABLE ONLY public.flag ALTER COLUMN id SET DEFAULT nextval('public.flag_id_seq'::regclass);


--
-- Data for Name: capability; Type: TABLE DATA; Schema: public; Owner: telescope
--

COPY public.capability (id, domain_id, flag_id, description, created_at) FROM stdin;
1	1	1	Platform Hardening	2022-09-08 14:26:28.290661
2	1	1	Container Protection	2022-09-08 14:26:28.30249
3	1	2	Secure Images	2022-09-08 14:26:28.303922
4	2	1	Classification	2022-09-08 14:26:28.305312
5	2	2	Encryption	2022-09-08 14:26:28.30721
6	2	1	Loss Prevention	2022-09-08 14:26:28.30847
7	3	1	Static Code Analysis	2022-09-08 14:26:28.309852
8	3	1	Dynamic Code Analysis	2022-09-08 14:26:28.311103
9	3	1	Vulnerability Assessment	2022-09-08 14:26:28.312412
10	4	2	Authentication	2022-09-08 14:26:28.313756
11	4	2	Traffic Analysis	2022-09-08 14:26:28.315104
12	4	1	Exposure Protection	2022-09-08 14:26:28.316482
13	4	1	Secure Protocols	2022-09-08 14:26:28.317821
14	5	1	Access Monitoring	2022-09-08 14:26:28.319128
15	5	1	Log Centralization	2022-09-08 14:26:28.320374
\.


--
-- Data for Name: domain; Type: TABLE DATA; Schema: public; Owner: telescope
--

COPY public.domain (id, description, created_at) FROM stdin;
1	Infrastructure Security	2022-09-08 14:26:03.658421
2	Data Security	2022-09-08 14:26:03.6702
3	Code Security	2022-09-08 14:26:03.671451
4	Integration Security	2022-09-08 14:26:03.672682
5	Operations Security	2022-09-08 14:26:03.673972
\.


--
-- Data for Name: flag; Type: TABLE DATA; Schema: public; Owner: telescope
--

COPY public.flag (id, description, created_at) FROM stdin;
1	red	2022-09-08 14:26:47.185106
2	green	2022-09-08 14:26:47.195902
\.


--
-- Name: capability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telescope
--

SELECT pg_catalog.setval('public.capability_id_seq', 15, true);


--
-- Name: domain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telescope
--

SELECT pg_catalog.setval('public.domain_id_seq', 5, true);


--
-- Name: flag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telescope
--

SELECT pg_catalog.setval('public.flag_id_seq', 2, true);


--
-- Name: capability capability_pkey; Type: CONSTRAINT; Schema: public; Owner: telescope
--

ALTER TABLE ONLY public.capability
    ADD CONSTRAINT capability_pkey PRIMARY KEY (id);


--
-- Name: domain domain_pkey; Type: CONSTRAINT; Schema: public; Owner: telescope
--

ALTER TABLE ONLY public.domain
    ADD CONSTRAINT domain_pkey PRIMARY KEY (id);


--
-- Name: flag flag_pkey; Type: CONSTRAINT; Schema: public; Owner: telescope
--

ALTER TABLE ONLY public.flag
    ADD CONSTRAINT flag_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

