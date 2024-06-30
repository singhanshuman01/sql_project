--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(255) NOT NULL,
    age numeric NOT NULL,
    distance integer NOT NULL,
    state text,
    life boolean,
    water boolean
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
    planet_id integer,
    name character varying(255) NOT NULL,
    age numeric NOT NULL,
    distance integer NOT NULL,
    radius integer,
    type text,
    life boolean,
    water boolean
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    exception boolean
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(255) NOT NULL,
    age integer NOT NULL,
    distance numeric NOT NULL,
    type text,
    life boolean,
    water boolean
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
    galaxy_id integer,
    name character varying(255) NOT NULL,
    age numeric NOT NULL,
    distance integer NOT NULL,
    state text,
    life boolean,
    water boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1.4, 100, 'supernova', true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 1.0, 120, 'young', true, true);
INSERT INTO public.galaxy VALUES (3, 'galax32', 1.0, 120, 'young', true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 1.0, 120, 'young', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 1.0, 120, 'young', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 1.0, 120, 'young', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'moon1', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (2, 1, 'moon2', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (3, 1, 'moon3', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (4, 2, 'moon4', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (5, 2, 'moon5', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (6, 3, 'moon6', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (7, 4, 'moon7', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (8, 4, 'moon8', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (9, 4, 'moon9', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (10, 5, 'moon10', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (11, 6, 'moon11', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (12, 6, 'moon12', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (13, 6, 'moon13', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (14, 6, 'moon14', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (15, 7, 'moon15', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (16, 7, 'moon16', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (17, 8, 'moon17', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (18, 8, 'moon18', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (19, 9, 'moon19', 0.9, 20, 80, 'dead', true, false);
INSERT INTO public.moon VALUES (20, 12, 'moon20', 0.9, 20, 80, 'dead', true, false);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'info1', 'chut', false);
INSERT INTO public.more_info VALUES (2, 'info2', 'chut', false);
INSERT INTO public.more_info VALUES (3, 'info3', 'chut', false);
INSERT INTO public.more_info VALUES (4, 'inf43', 'chut', false);
INSERT INTO public.more_info VALUES (5, 'info5', 'chut', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'planet1', 12, 1.8, 'inhabitable', true, true);
INSERT INTO public.planet VALUES (2, 1, 'planet2', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (3, 1, 'planet3', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (4, 1, 'planet4', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (5, 3, 'planet5', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (6, 2, 'planet6', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (7, 4, 'planet7', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (8, 5, 'planet8', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (9, 5, 'planet9', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (10, 5, 'planet10', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (11, 5, 'planet11', 12, 1.8, 'inhabitable', false, false);
INSERT INTO public.planet VALUES (12, 6, 'planet12', 12, 1.8, 'inhabitable', false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'star1', 1.4, 140, 'supernova', true, true);
INSERT INTO public.star VALUES (2, 1, 'star2', 1.5, 120, 'blue giant', true, false);
INSERT INTO public.star VALUES (3, 2, 'star3', 1.0, 100, 'red', false, false);
INSERT INTO public.star VALUES (4, 1, 'star4', 1.9, 80, 'yellow', false, false);
INSERT INTO public.star VALUES (5, 3, 'star5', 1.5, 100, 'red', false, false);
INSERT INTO public.star VALUES (6, 3, 'star6', 1.3, 40, 'red', false, false);
INSERT INTO public.star VALUES (7, 5, 'star7', 1.5, 1000, 'supernova', false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

