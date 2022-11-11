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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(15) NOT NULL,
    is_spherical boolean,
    description text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(15) NOT NULL,
    size numeric(10,3),
    has_life boolean,
    age integer,
    galaxy_type integer,
    is_spherical boolean,
    description text
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
    name character varying(15) NOT NULL,
    size numeric(10,3),
    has_life boolean,
    age integer,
    moon_type integer,
    is_spherical boolean,
    planet_id integer NOT NULL,
    description text
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
    name character varying(15) NOT NULL,
    size numeric(10,3),
    has_life boolean,
    age integer,
    planet_type integer,
    is_spherical boolean,
    star_id integer NOT NULL,
    description text
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
    name character varying(15) NOT NULL,
    size numeric(10,3),
    has_life boolean,
    age integer,
    star_type integer,
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    description text
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'comet1', true, NULL);
INSERT INTO public.comet VALUES (2, 'comet2', true, NULL);
INSERT INTO public.comet VALUES (3, 'comet3', false, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 7415468.451, false, 7848512, 1, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 9451878.851, true, 87641512, 1, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 7684651.745, false, 13157841, 2, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 78.851, false, 72, 1, true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 841.250, false, 31, 1, false, 1, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 62.410, false, 62, 2, true, 2, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, NULL, NULL, NULL, 12, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 6578.851, false, 872, 1, false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', 8451.725, false, 131, 1, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', 621.410, false, 632, 2, true, 2, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', NULL, NULL, NULL, NULL, NULL, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 97878.851, true, 87672, 1, false, 2, NULL);
INSERT INTO public.star VALUES (2, 'star2', 84651.745, false, 13841, 2, false, 1, NULL);
INSERT INTO public.star VALUES (3, 'star3', 15621.641, false, 64532, 2, true, 2, NULL);
INSERT INTO public.star VALUES (4, 'star4', NULL, NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.star VALUES (5, 'star5', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.star VALUES (6, 'star6', NULL, NULL, NULL, NULL, NULL, 2, NULL);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy c1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT c1 UNIQUE (name);


--
-- Name: star c2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT c2 UNIQUE (name);


--
-- Name: planet c3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT c3 UNIQUE (name);


--
-- Name: moon c4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT c4 UNIQUE (name);


--
-- Name: comet c5; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT c5 UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

