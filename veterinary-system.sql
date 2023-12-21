--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2023-12-22 00:34:23

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

--
-- TOC entry 6 (class 2615 OID 17225)
-- Name: veterinary-system; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "veterinary-system";


ALTER SCHEMA "veterinary-system" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 17156)
-- Name: appointments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointments (
    id bigint NOT NULL,
    start_date_time timestamp(6) without time zone,
    pet_id bigint,
    vet_id bigint
);


ALTER TABLE public.appointments OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17194)
-- Name: appointments_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointments_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointments_seq OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17161)
-- Name: owners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.owners (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    email character varying(255),
    name character varying(255),
    phone character varying(255)
);


ALTER TABLE public.owners OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17195)
-- Name: owners_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.owners_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.owners_seq OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17168)
-- Name: pets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pets (
    id bigint NOT NULL,
    birth_date date,
    breed character varying(255),
    colour character varying(255),
    gender character varying(255),
    species character varying(255),
    owner_id bigint,
    name character varying(255)
);


ALTER TABLE public.pets OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17196)
-- Name: pets_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pets_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pets_seq OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17175)
-- Name: vaccines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vaccines (
    id bigint NOT NULL,
    code character varying(255),
    name character varying(255),
    protection_start_date date,
    pet_id bigint,
    protection_finish_date date
);


ALTER TABLE public.vaccines OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17197)
-- Name: vaccines_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vaccines_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vaccines_seq OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17182)
-- Name: vets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vets (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    email character varying(255),
    name character varying(255),
    phone_number character varying(255)
);


ALTER TABLE public.vets OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17198)
-- Name: vets_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vets_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vets_seq OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17189)
-- Name: workdays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workdays (
    id bigint NOT NULL,
    vet_id bigint,
    workday date
);


ALTER TABLE public.workdays OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17199)
-- Name: workdays_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.workdays_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workdays_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 17156)
-- Dependencies: 216
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appointments (id, start_date_time, pet_id, vet_id) FROM stdin;
\.


--
-- TOC entry 4821 (class 0 OID 17161)
-- Dependencies: 217
-- Data for Name: owners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.owners (id, address, city, email, name, phone) FROM stdin;
602	bolu abant	bursa	aosdhad@gmail.com	burak	+165416516
603	USA	Atlanta	sıdfjsnd@gmail.com	yusuf	+16541622516
604	France	Paris	zeefsfd@gmail.com	Zeynep	+165416212516
605	Bostanlı	izmir	petasf@gmail.com	Pelte	+65416212516
606	UK	Manchester	lilsadas@gmail.com	Lilly	+5416212516
\.


--
-- TOC entry 4822 (class 0 OID 17168)
-- Dependencies: 218
-- Data for Name: pets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pets (id, birth_date, breed, colour, gender, species, owner_id, name) FROM stdin;
1	2022-12-21	baya baya kedi	siyah	erkek	kedi	602	pati1
2	2021-12-21	baya baya kedi	mor	dişi	kedi	602	pati2
3	2020-12-21	kedi gibi köpek	mavi	dişi	köpenk	603	pati3
4	2020-10-21	tatlı su zürafası	eflatun	erkek	zürafa	604	pati4
5	2019-10-21	uşak kobra	cyan	hermafrodit	kral kobra	605	pati5
\.


--
-- TOC entry 4823 (class 0 OID 17175)
-- Dependencies: 219
-- Data for Name: vaccines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vaccines (id, code, name, protection_start_date, pet_id, protection_finish_date) FROM stdin;
102	1001	kuduz	2023-06-21	1	2023-12-21
103	2001	karma	2023-06-21	1	2024-06-21
104	3001	lösemi	2023-06-21	1	2024-06-21
105	1001	kuduz	2022-06-21	2	2023-06-21
106	1001	kuduz	2022-08-21	3	2023-08-21
107	1001	kuduz	2021-08-21	4	2022-08-21
108	1001	kuduz	2022-01-21	5	2023-01-21
\.


--
-- TOC entry 4824 (class 0 OID 17182)
-- Dependencies: 220
-- Data for Name: vets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vets (id, address, city, email, name, phone_number) FROM stdin;
54	istanbul	Türkiye	vet2@patika.com.tr	vet2	+65165166
55	istanbul	Türkiye	vet3@patika.com.tr	vet3	+651651626
56	istanbul	Türkiye	vet4@patika.com.tr	vet4	+6516251626
53	testt	testttt	test@test.com.tr	vet1	test
\.


--
-- TOC entry 4825 (class 0 OID 17189)
-- Dependencies: 221
-- Data for Name: workdays; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workdays (id, vet_id, workday) FROM stdin;
103	53	2023-10-21
104	55	2024-01-01
105	55	2024-02-01
106	55	2024-02-03
107	56	2024-02-03
108	56	2024-04-03
102	55	2023-12-21
\.


--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 222
-- Name: appointments_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointments_seq', 1, false);


--
-- TOC entry 4838 (class 0 OID 0)
-- Dependencies: 223
-- Name: owners_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.owners_seq', 651, true);


--
-- TOC entry 4839 (class 0 OID 0)
-- Dependencies: 224
-- Name: pets_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pets_seq', 51, true);


--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 225
-- Name: vaccines_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vaccines_seq', 151, true);


--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 226
-- Name: vets_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vets_seq', 101, true);


--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 227
-- Name: workdays_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workdays_seq', 151, true);


--
-- TOC entry 4661 (class 2606 OID 17160)
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);


--
-- TOC entry 4663 (class 2606 OID 17167)
-- Name: owners owners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.owners
    ADD CONSTRAINT owners_pkey PRIMARY KEY (id);


--
-- TOC entry 4665 (class 2606 OID 17174)
-- Name: pets pets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);


--
-- TOC entry 4667 (class 2606 OID 17181)
-- Name: vaccines vaccines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT vaccines_pkey PRIMARY KEY (id);


--
-- TOC entry 4669 (class 2606 OID 17188)
-- Name: vets vets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vets
    ADD CONSTRAINT vets_pkey PRIMARY KEY (id);


--
-- TOC entry 4671 (class 2606 OID 17193)
-- Name: workdays workdays_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workdays
    ADD CONSTRAINT workdays_pkey PRIMARY KEY (id);


--
-- TOC entry 4676 (class 2606 OID 17220)
-- Name: workdays fk261vm7jaaxrgn5okxaw57h5bi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workdays
    ADD CONSTRAINT fk261vm7jaaxrgn5okxaw57h5bi FOREIGN KEY (vet_id) REFERENCES public.vets(id);


--
-- TOC entry 4672 (class 2606 OID 17200)
-- Name: appointments fk62dl3dvwsbveq3vv067becwmj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk62dl3dvwsbveq3vv067becwmj FOREIGN KEY (pet_id) REFERENCES public.pets(id);


--
-- TOC entry 4674 (class 2606 OID 17210)
-- Name: pets fk6teg4kcjcnjhduguft56wcfoa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT fk6teg4kcjcnjhduguft56wcfoa FOREIGN KEY (owner_id) REFERENCES public.owners(id);


--
-- TOC entry 4675 (class 2606 OID 17215)
-- Name: vaccines fkefysu25vbkfsin0kwxi4lghvc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT fkefysu25vbkfsin0kwxi4lghvc FOREIGN KEY (pet_id) REFERENCES public.pets(id);


--
-- TOC entry 4673 (class 2606 OID 17205)
-- Name: appointments fkij3s37eghwey25hfo6d7xwky6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fkij3s37eghwey25hfo6d7xwky6 FOREIGN KEY (vet_id) REFERENCES public.vets(id);


-- Completed on 2023-12-22 00:34:23

--
-- PostgreSQL database dump complete
--

