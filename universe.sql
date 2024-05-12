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
-- Name: author; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.author (
    author_id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL
);


ALTER TABLE public.author OWNER TO freecodecamp;

--
-- Name: author_author_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.author_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.author_author_id_seq OWNER TO freecodecamp;

--
-- Name: author_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.author_author_id_seq OWNED BY public.author.author_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    light_years_from_earth integer,
    description text,
    size numeric(20,2)
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    planet_id integer,
    radius numeric(15,2)
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
    name character varying(30) NOT NULL,
    age_in_millons_of_years numeric(10,2),
    star_id integer,
    number_of_moons integer
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    description text,
    is_spherical boolean,
    has_life boolean,
    galaxy_id integer
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
-- Name: author author_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.author ALTER COLUMN author_id SET DEFAULT nextval('public.author_author_id_seq'::regclass);


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
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.author VALUES (1, 'abir', 'a@c.com');
INSERT INTO public.author VALUES (2, 'Tawfiq', 'b@d.com');
INSERT INTO public.author VALUES (3, 'Imam', 'D@d.com');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'cignus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Megellanic clouds', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Virgo A', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 100, 10, NULL);
INSERT INTO public.moon VALUES (2, 'B', 100, 11, NULL);
INSERT INTO public.moon VALUES (3, 'c', 100, 12, NULL);
INSERT INTO public.moon VALUES (4, 'd', 200, 13, NULL);
INSERT INTO public.moon VALUES (5, 'e', 500, 14, NULL);
INSERT INTO public.moon VALUES (6, 'f', 600, 15, NULL);
INSERT INTO public.moon VALUES (7, 'i', 700, 16, NULL);
INSERT INTO public.moon VALUES (8, 'j', 900, 17, NULL);
INSERT INTO public.moon VALUES (9, 'AA', 100, 5, NULL);
INSERT INTO public.moon VALUES (10, 'BB', 100, 6, NULL);
INSERT INTO public.moon VALUES (11, 'oo', 100, 10, NULL);
INSERT INTO public.moon VALUES (12, 'mm', 100, 11, NULL);
INSERT INTO public.moon VALUES (13, 'nn', 100, 12, NULL);
INSERT INTO public.moon VALUES (14, 'uu', 200, 13, NULL);
INSERT INTO public.moon VALUES (15, 'ww', 500, 14, NULL);
INSERT INTO public.moon VALUES (16, 'gg', 600, 15, NULL);
INSERT INTO public.moon VALUES (17, 'ii', 700, 16, NULL);
INSERT INTO public.moon VALUES (18, 'FF', 900, 17, NULL);
INSERT INTO public.moon VALUES (19, 'DD', 100, 5, NULL);
INSERT INTO public.moon VALUES (20, 'CC', 100, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'a', 100.00, 1, NULL);
INSERT INTO public.planet VALUES (6, 'b', 100.00, 2, NULL);
INSERT INTO public.planet VALUES (7, 'c', 300.00, 3, NULL);
INSERT INTO public.planet VALUES (8, 'd', 300.00, 5, NULL);
INSERT INTO public.planet VALUES (10, 'j', 100.00, 1, NULL);
INSERT INTO public.planet VALUES (11, 'i', 100.00, 2, NULL);
INSERT INTO public.planet VALUES (12, 'f', 300.00, 3, NULL);
INSERT INTO public.planet VALUES (13, 'e', 300.00, 5, NULL);
INSERT INTO public.planet VALUES (14, 'n', 100.00, 1, NULL);
INSERT INTO public.planet VALUES (15, 'm', 100.00, 2, NULL);
INSERT INTO public.planet VALUES (16, 'l', 300.00, 3, NULL);
INSERT INTO public.planet VALUES (17, 'k', 300.00, 7, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'UY scuti', 10000, 'description', true, true, 1);
INSERT INTO public.star VALUES (2, 'ZX', 1000, 'description', true, true, 2);
INSERT INTO public.star VALUES (3, 'XX', 10000, 'description', true, true, 3);
INSERT INTO public.star VALUES (5, 'UV scuti', 10000, 'description', true, true, 4);
INSERT INTO public.star VALUES (6, 'TR', 1000, 'description', true, true, 5);
INSERT INTO public.star VALUES (7, 'AB', 10000, 'description', true, true, 6);


--
-- Name: author_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.author_author_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (author_id);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: author unique_email; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT unique_email UNIQUE (email);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: star galaxy_star_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_star_foreign_key FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

