--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    num_planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    moon_size numeric(2,1),
    has_station boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    distance numeric(3,1),
    star_type character varying(30),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: starship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starship (
    starship_id integer NOT NULL,
    name character varying(30),
    crew integer NOT NULL
);


ALTER TABLE public.starship OWNER TO freecodecamp;

--
-- Name: starship_starship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.starship_starship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starship_starship_id_seq OWNER TO freecodecamp;

--
-- Name: starship_starship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.starship_starship_id_seq OWNED BY public.starship.starship_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: starship starship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship ALTER COLUMN starship_id SET DEFAULT nextval('public.starship_starship_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Core Worlds', 'The Core Worlds were home of the richest and most important worlds in the galaxy.', 3000, 12);
INSERT INTO public.galaxy VALUES (2, 'Colonies', 'The Colonies consist of worlds colonized by the Core.', 2500, 7);
INSERT INTO public.galaxy VALUES (3, 'Inner Rim', 'When first settled, the Inner Rim served as the frontier of galactical civilization', 2100, 5);
INSERT INTO public.galaxy VALUES (4, 'Expansion Region', 'The Expansion Region contained many of the newer colonies.', 1850, 21);
INSERT INTO public.galaxy VALUES (5, 'Mid Rim', 'The Mid Rim Territories were a tranquil region.', 1800, 3);
INSERT INTO public.galaxy VALUES (6, 'Outer Rim', 'The Outer Rim were considered to be lawless, strange and savage.', 1790, 16);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Coruscant-Moon', 2.2, false, 1);
INSERT INTO public.moon VALUES (34, 'Kuat Moon One', 2.4, true, 2);
INSERT INTO public.moon VALUES (35, 'Kuat Moon Two', 2.3, false, 2);
INSERT INTO public.moon VALUES (36, 'Abednedo Moon', 0.3, false, 3);
INSERT INTO public.moon VALUES (37, 'Carida Moon', 1.3, false, 4);
INSERT INTO public.moon VALUES (38, 'Carida New  Moon', 2.1, true, 4);
INSERT INTO public.moon VALUES (39, 'Bestina Moon', 1.8, true, 5);
INSERT INTO public.moon VALUES (40, 'Onderon Moon', 4.3, false, 6);
INSERT INTO public.moon VALUES (41, 'Umbara Moon', 0.4, true, 7);
INSERT INTO public.moon VALUES (42, 'Umbara Moo 2', 2.1, true, 7);
INSERT INTO public.moon VALUES (43, 'Mimban Moon', 0.1, true, 8);
INSERT INTO public.moon VALUES (44, 'Mimban Moon 2', 0.3, false, 8);
INSERT INTO public.moon VALUES (45, 'Naboo Moon', 2.0, true, 9);
INSERT INTO public.moon VALUES (46, 'Naboo Moon 2', 2.1, true, 9);
INSERT INTO public.moon VALUES (47, 'Naboo Moon 3', 2.4, true, 9);
INSERT INTO public.moon VALUES (48, 'Malastear Moon', 0.5, false, 10);
INSERT INTO public.moon VALUES (49, 'Arkanis Moon', 0.8, false, 11);
INSERT INTO public.moon VALUES (50, 'Endor Moon One', 2.8, true, 12);
INSERT INTO public.moon VALUES (51, 'Endor Moon TWO', 2.3, false, 12);
INSERT INTO public.moon VALUES (52, 'Endor Moon Three', 2.2, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Coruscant', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Kuat', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Abednedo', true, true, 2);
INSERT INTO public.planet VALUES (4, 'Carida', true, true, 2);
INSERT INTO public.planet VALUES (5, 'Bestine', true, true, 3);
INSERT INTO public.planet VALUES (6, 'Onderon', true, true, 3);
INSERT INTO public.planet VALUES (7, 'Umbara', true, true, 4);
INSERT INTO public.planet VALUES (8, 'Mimban', true, true, 4);
INSERT INTO public.planet VALUES (9, 'Naboo', true, false, 5);
INSERT INTO public.planet VALUES (10, 'Malastare', true, true, 5);
INSERT INTO public.planet VALUES (11, 'Arkanis', true, true, 6);
INSERT INTO public.planet VALUES (12, 'Endor', true, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Core Star', 0.1, 'Supernova', 1);
INSERT INTO public.star VALUES (2, 'Colonie Star', 3.2, 'Nova', 2);
INSERT INTO public.star VALUES (3, 'Inner Star', 3.1, 'Nova_A', 3);
INSERT INTO public.star VALUES (4, 'Expansion Star', 6.0, 'Nova_B', 4);
INSERT INTO public.star VALUES (5, 'Mid star', 4.3, 'Nova new Type', 5);
INSERT INTO public.star VALUES (6, 'Outer Star', 5.2, 'Nova', 6);


--
-- Data for Name: starship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starship VALUES (1, 'Rocketman', 4);
INSERT INTO public.starship VALUES (2, 'York', 190);
INSERT INTO public.starship VALUES (3, 'Titanic', 58);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: starship_starship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.starship_starship_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: starship starship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT starship_name_key UNIQUE (name);


--
-- Name: starship starship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT starship_pkey PRIMARY KEY (starship_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

