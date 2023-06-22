--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

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
-- Name: schemasvjp; Type: SCHEMA; Schema: -; Owner: john
--

CREATE SCHEMA schemasvjp;


ALTER SCHEMA schemasvjp OWNER TO john;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users_table; Type: TABLE; Schema: schemasvjp; Owner: john
--

CREATE TABLE schemasvjp.users_table (
    id integer NOT NULL,
    name character varying(50),
    age integer,
    address character varying(100),
    location character varying(50)
);


ALTER TABLE schemasvjp.users_table OWNER TO john;

--
-- Name: users_table_id_seq; Type: SEQUENCE; Schema: schemasvjp; Owner: john
--

CREATE SEQUENCE schemasvjp.users_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE schemasvjp.users_table_id_seq OWNER TO john;

--
-- Name: users_table_id_seq; Type: SEQUENCE OWNED BY; Schema: schemasvjp; Owner: john
--

ALTER SEQUENCE schemasvjp.users_table_id_seq OWNED BY schemasvjp.users_table.id;


--
-- Name: users_table id; Type: DEFAULT; Schema: schemasvjp; Owner: john
--

ALTER TABLE ONLY schemasvjp.users_table ALTER COLUMN id SET DEFAULT nextval('schemasvjp.users_table_id_seq'::regclass);


--
-- Data for Name: users_table; Type: TABLE DATA; Schema: schemasvjp; Owner: john
--

COPY schemasvjp.users_table (id, name, age, address, location) FROM stdin;
1	John Doe	30	123 Main St	New York
2	Jane Smith	25	456 Elm St	Los Angeles
3	Bob Johnson	40	789 Oak St	Chicago
4	John Doe	30	123 Main St	New York
5	Jane Smith	25	456 Elm St	Los Angeles
6	Bob Johnson	40	789 Oak St	Chicago
7	2non	22	2non2@gmail.com	location
8	cc	1	cc	dd
9	working	42	cMalloossery	panampunna
\.


--
-- Name: users_table_id_seq; Type: SEQUENCE SET; Schema: schemasvjp; Owner: john
--

SELECT pg_catalog.setval('schemasvjp.users_table_id_seq', 9, true);


--
-- Name: users_table users_table_pkey; Type: CONSTRAINT; Schema: schemasvjp; Owner: john
--

ALTER TABLE ONLY schemasvjp.users_table
    ADD CONSTRAINT users_table_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA schemasvjp; Type: ACL; Schema: -; Owner: john
--

GRANT USAGE ON SCHEMA schemasvjp TO psql_user;


--
-- Name: TABLE users_table; Type: ACL; Schema: schemasvjp; Owner: john
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE schemasvjp.users_table TO psql_user;


--
-- Name: SEQUENCE users_table_id_seq; Type: ACL; Schema: schemasvjp; Owner: john
--

GRANT SELECT,USAGE ON SEQUENCE schemasvjp.users_table_id_seq TO psql_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: schemasvjp; Owner: john
--

ALTER DEFAULT PRIVILEGES FOR ROLE john IN SCHEMA schemasvjp GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES  TO psql_user;


--
-- PostgreSQL database dump complete
--

